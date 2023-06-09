import { Component, OnInit } from '@angular/core';
import { RestService } from '../services/rest.service';
import { Chair } from '../models/chair';
import { ActivatedRoute, Router } from '@angular/router';
import { Movie } from '../models/movie';
import Swal from 'sweetalert2';
import { ShowTime } from '../models/time';

@Component({
  selector: 'app-seats',
  templateUrl: './seats.component.html',
  styleUrls: ['./seats.component.scss'],
})
export class SeatsComponent implements OnInit {
  seats: { row: number; column: string; status: string }[][] = [[]];
  seatList!: Chair[];
  movieId = "";
  selectedMovie: Movie | undefined = sessionStorage.getItem('movie') ? JSON.parse(sessionStorage.getItem('movie') as string) : undefined;
  selectedTime!: ShowTime;
  departmentId!: string;
  timeId!: string;

  constructor(private restService: RestService, private activatedRoute: ActivatedRoute, private router: Router) {
    this.movieId = this.activatedRoute.snapshot.paramMap.get('movieId') as string;
    const timeData = sessionStorage.getItem('time');
    if(timeData){
      sessionStorage.removeItem('ticketId');
      this.selectedTime = JSON.parse(timeData);
      this.departmentId = this.selectedTime.department.id;
      this.timeId = this.selectedTime.id;
    }
  }

  ngOnInit(): void {
    this.restService.getMovieById(this.movieId).subscribe((result) => {
      this.selectedMovie = result[0] as Movie;
    });
    this.getChairList();
  }

  getChairList(){
    this.restService.getChairList(this.departmentId, this.timeId)
    .subscribe((data: any) => {
      this.seatList = data;
    });
  }

  getImageUrl(status: string) {
    if (status === 'FREE') {
      return '../../assets/images/seat.svg';
    } else if (status === 'BOOKED') {
      return '../../assets/images/seat-booked.svg';
    } else {
      return '../../assets/images/seat-selected.svg';
    }
  }

  handleSelectSeats() {
    if(this.selectedSeats().length > 0){
      Swal.fire({
        title:'<h4 class="mt-3">' + 'Bạn xác nhận tiến hành đặt vé?' + '</h4>',
        showCancelButton: true,
        confirmButtonText: 'Đồng ý',
        confirmButtonColor: '#0D6EFD',
        cancelButtonText: 'Huỷ bỏ',
      }).then((result) => {
        if (result.isConfirmed) {
          const chairList = this.selectedSeats().map( seat =>{
            return{
              id: seat.id,
              departmentId: seat.departmentId,
              number: seat.number,
            }
          });
          const submitData = {
            timeId: this.selectedTime.id,
            chairs: chairList,
            accountId: "b92948ca-8a35-4717-8058-7e250a49f0c1"
          };
          this.restService.createTicket(submitData).subscribe({
            next: (response)=> {
              sessionStorage.setItem('ticketId', response.id)
              this.router.navigate(['/bill', this.movieId]);
            },
            error: ()=> {
              Swal.fire({
                icon: 'error',
                title: '<h4>' + ' Đặt vé thất bại vui lòng thử lại! ' + '</h4>',
                confirmButtonColor: '#d33',
              });
              this.getChairList();
            }
          }
          );
        }
      });
    } else {
      Swal.fire({
        icon: 'info',
        title: '<h4>' + ' Vui lòng chọn ít nhất một chỗ để tiến hành đặt vé! ' + '</h4>',
        confirmButtonColor: '#0D6EFD',
      });
    }
  }

  selectedSeats() {
    let selectedSeats = [];
      for (let j = 0; j < this.seatList?.length; j++) {
        if (this.seatList[j].status === 'SELECTED') {
          selectedSeats.push(this.seatList[j]);
          sessionStorage.setItem('listChair', JSON.stringify(selectedSeats));
        }
      }

    sessionStorage.setItem('listChair', JSON.stringify(selectedSeats))
    return selectedSeats;
  }
}
