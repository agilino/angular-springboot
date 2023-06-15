import { Component } from '@angular/core';
import { RestService } from '../services/rest.service';
import { Movie } from '../models/movie';
import { ActivatedRoute, Router } from '@angular/router';
import { DatePipe } from '@angular/common';
import { GroupedShowTime, ShowTime, ShowTimeInGroup, Time } from '../models/time';

@Component({
  selector: 'app-pick-showtime',
  templateUrl: './pick-showtime.component.html',
  styleUrls: ['./pick-showtime.component.scss']
})
export class PickShowtimeComponent {
  selectedDay: any;
  dateMock = [] as Date[];
  movieId = "";
  selectedMovie: Movie | undefined;
  rawTimeData!: Time[];
  showTimes = [] as ShowTime[];
  selectedShowTime = [] as ShowTime[];
  timeByDepartment!: GroupedShowTime[];
  displayShowTime!: GroupedShowTime[];


  constructor(private restService: RestService, private activatedRoute: ActivatedRoute, private datePipe: DatePipe, private router: Router) {
    this.initDate();
    this.selectedDay = this.dateMock[0];
    this.movieId = this.activatedRoute.snapshot.paramMap.get('movieId') as string;
  }

  ngOnInit(): void {
    this.restService.getMovieById(this.movieId).subscribe((result) => {
      this.selectedMovie = result[0] as Movie;
    });
    this.restService.getTimeByMovieId(this.movieId).subscribe((result) => {
      this.rawTimeData = result;
      this.showTimes = this.mapTimeToShowTime(this.rawTimeData);
      this.timeByDepartment = this.groupShowtimeByDepartmentAndDay(this.showTimes).sort();
      this.displayShowTime = this.timeByDepartment.filter((time: any) => time.day === this.datePipe.transform(this.selectedDay, 'dd/MM'));
    });
  }

  initDate(){
    for(let i = 0; i < 7; i++) {
      this.dateMock.push(new Date(Date.parse("2021-08-01") + i * 24 * 60 * 60 * 1000))
    }
  }

  isOverTime(time: string): boolean {
    let isOverMinutes = parseInt(time.split(":")[1]) < new Date().getMinutes();
    let isOverHours = parseInt(time.split(":")[0]) < new Date().getHours();

    if(parseInt(time.split(":")[0]) === new Date().getHours()){
      return isOverMinutes;
    } else {
      return isOverHours;
    }
  }

  selectDay(item: any){
    if(this.selectedDay.date!= item){
      this.selectedDay = item;
      this.displayShowTime = this.timeByDepartment.filter((time: any) => time.day === this.datePipe.transform(this.selectedDay, 'dd/MM'));
    }
  }

  groupShowtimeByDepartmentAndDay(times: ShowTime[]): GroupedShowTime[] {
    return times.reduce((groups, time) => {
      const id = `${time.department.id}_${time.day}`;
      const index = groups.findIndex(group => group.id === id);

      if (index < 0) {
        groups.push({
          id,
          day: time.day,
          department: time.department,
          showtimes: [this.buildShowTimeInGroup(time.id, time.from)]
        });
      } else {
        groups[index].showtimes.push(this.buildShowTimeInGroup(time.id, time.from));
      }

      return groups;
    }, [] as GroupedShowTime[]);
  }

  buildShowTimeInGroup(id: string, from: string){
    return {
      id,
      from
    } as ShowTimeInGroup;
  }

  toShowTimeFormat(time: Time): ShowTime{
    return {
      id: time.id,
      from: this.datePipe.transform(time.from, 'HH:mm') as string,
      day: this.datePipe.transform(time.from, 'dd/MM') as string,
      department: time.department
    }
  }

  mapTimeToShowTime(times: Time[]): ShowTime[]{
    return times.map((item) => this.toShowTimeFormat(item));
  }

  chooseTime(time: ShowTimeInGroup){
    const selectedTime = this.rawTimeData.filter(item => {
      return time.id === item.id
    });
    sessionStorage.setItem('time', JSON.stringify(selectedTime[0]));
    this.router.navigate(['/seats', this.movieId]);
  }
}
