import { Component } from '@angular/core';
import { RestService } from '../services/rest.service';
import { Movie } from '../models/movie';
import { ActivatedRoute, RouterLinkActive } from '@angular/router';
import { DatePipe } from '@angular/common';
import { ShowTime, Time } from '../models/time';

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

  constructor(private restService: RestService, private activatedRoute: ActivatedRoute, private datePipe: DatePipe) {
    this.initDate();
    this.selectedDay = this.dateMock[0];
    this.movieId = this.activatedRoute.snapshot.paramMap.get('movieId') as string;
  }

  ngOnInit(): void {
    this.restService.getMovieById(this.movieId).subscribe((result) => {
      this.selectedMovie = result[0] as Movie;
      console.log(result);
      this.restService.getTimeByMovieId(this.movieId).subscribe((result) => {
        console.log(this.mapTimeToShowTime(result as Time[]));
      });
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

  movieMockList = [
    {
      bannerUrl: "https://cdn.moveek.com/storage/media/cache/mini/643cd05155dc9009010254.jpeg",
      title: "Lật Mặt 6: Tấm vé định mệnh",
      titleEng: "Face Off 6: The Ticket Of Destiny · NC16 · 2h12' ",
      type:"2D Lồng Tiếng",
      showtimes: [ "9:00", "16:00", "18:00","20:00", "22:00", "24:00"],
      department: "CGV Sense City",
    },
    {
      bannerUrl: "https://cdn.moveek.com/storage/media/cache/mini/643cd05155dc9009010254.jpeg",
      title: "Lật Mặt 6: Tấm vé định mệnh",
      titleEng: "Face Off 6: The Ticket Of Destiny · NC16 · 2h12' ",
      type:"2D Lồng Tiếng",
      showtimes: [ "20:00", "22:00", "24:00" ],
      department: "CGV Hùng Vương",
    },{
      bannerUrl: "https://cdn.moveek.com/storage/media/cache/mini/643cd05155dc9009010254.jpeg",
      title: "Lật Mặt 6: Tấm vé định mệnh",
      titleEng: "Face Off 6: The Ticket Of Destiny · NC16 · 2h12' ",
      type:"2D Lồng Tiếng",
      showtimes: [ "20:00", "22:45", "24:00" ],
      department: "CGV Xuân Khánh",
    }
  ]

  selectDay(item: any){
    if(this.selectedDay.date!= item){
      this.selectedDay = item;
    }
  }

  toShowTimeFormat(time: Time): ShowTime{
    return {
      from: this.datePipe.transform(time.from, 'HH:mm') as string,
      day: this.datePipe.transform(time.from, 'dd/MM') as string,
      department: time.department
    }
  }

  mapTimeToShowTime(times: Time[]): ShowTime[]{
    return times.map((item) => this.toShowTimeFormat(item));
  }
}
