import { Component, OnInit } from '@angular/core';
import { RestService } from '../services/rest.service';
import { ActivatedRoute } from '@angular/router';
import { Movie } from '../models/movie';
import { Chair } from '../models/chair';
import { ShowTime, Time } from '../models/time';

@Component({
  selector: 'app-bill',
  templateUrl: './bill.component.html',
  styleUrls: ['./bill.component.scss']
})
export class BillComponent implements OnInit{
movieId: string;
selectedMovie!: Movie;
listChair!: Chair[];
selectedTime!: ShowTime;
selectedChair!: Chair[];



  constructor(private restService: RestService, private activatedRoute: ActivatedRoute) {
    this.movieId = this.activatedRoute.snapshot.paramMap.get('movieId') as string;
    const timeData = sessionStorage.getItem('time');
    const chairData = sessionStorage.getItem('listChair');
    console.log(timeData, chairData);

    if(timeData && chairData){
      this.selectedTime = JSON.parse(timeData);
      this.selectedChair = JSON.parse(chairData);
   }
  }
  ngOnInit() {
    this.restService.getMovieById(this.movieId).subscribe((result) => {
      this.selectedMovie = result[0] as Movie;
    });
  }
}


