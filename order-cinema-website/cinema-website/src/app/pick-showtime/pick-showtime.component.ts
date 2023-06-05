import { Component } from '@angular/core';

@Component({
  selector: 'app-pick-showtime',
  templateUrl: './pick-showtime.component.html',
  styleUrls: ['./pick-showtime.component.scss']
})
export class PickShowtimeComponent {
  selectedDay: any;
  selectedCity : any;
  dateMock = [] as Date[];


initDate(){
  for(let i = 0; i < 7; i++) {
    this.dateMock.push(new Date(Date.now() + i * 24 * 60 * 60 * 1000))
  }
}

  movieMockList = [
    {
      bannerUrl: "https://cdn.moveek.com/storage/media/cache/mini/643cd05155dc9009010254.jpeg",
      title: "Lật Mặt: 48H",
      titleEng: "Face Off 6: The Ticket Of Destiny · NC16 · 2h12' ",
      type:"2D Lồng Tiếng",
      showtimes: [ "9:00", "16:00", "18:00","20:00", "22:00", "24:00"  ],
      department: "CGV Sense City",
    },
    {
      bannerUrl: "https://cdn.moveek.com/storage/media/cache/mini/643cd05155dc9009010254.jpeg",
      title: "Lật Mặt: 48H",
      titleEng: "Face Off 6: The Ticket Of Destiny · NC16 · 2h12' ",
      type:"2D Lồng Tiếng",
      showtimes: [ "20:00", "22:00", "24:00" ],
      department: "CGV Hùng Vương",
    },{
      bannerUrl: "https://cdn.moveek.com/storage/media/cache/mini/643cd05155dc9009010254.jpeg",
      title: "Lật Mặt: 48H",
      titleEng: "Face Off 6: The Ticket Of Destiny · NC16 · 2h12' ",
      type:"2D Lồng Tiếng",
      showtimes: [ "20:00", "22:00", "24:00" ],
      department: "CGV Xuân Khánh",
    }
  ]

  city = ["Cần Thơ", "Đà Nẵng", "TP. Hồ Chí Minh"]

  constructor() {
    this.initDate();
    this.selectedCity = this.city[0];
    this.selectedDay = this.dateMock[0];
   }

  selectDay(item: any){
    if(this.selectedDay.date!= item){
      this.selectedDay = item;
    }
  }
  selectCity(item: string){
    if(this.selectedCity!=item){
      this.selectedCity = item;
    }
  }
}
