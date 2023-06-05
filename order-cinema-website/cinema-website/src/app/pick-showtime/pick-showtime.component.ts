import { Component } from '@angular/core';

@Component({
  selector: 'app-pick-showtime',
  templateUrl: './pick-showtime.component.html',
  styleUrls: ['./pick-showtime.component.scss']
})
export class PickShowtimeComponent {
  selectedDay = {
    day: "Th 2",
    date: "20/10",
  }
  selectedCity = "Cần Thơ"
  dateMock = [
    {
      day: "Th 2",
      date: "20/10",
    },
    {
      day: "Th 3",
      date: "21/10",
    },
    {
      day: "Th 4",
      date: "22/10",
    },
    {
      day: "Th 5",
      date: "23/10",
    },
    {
      day: "Th 6",
      date: "24/10",
    },
    {
      day: "Th 7",
      date: "25/10",
    },
    {
      day: "CN",
      date: "26/10",
    },
  ]

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
  selectDay(item: any){
    if(this.selectedDay.date!= item.date){
      this.selectedDay = item;
    }
  }
  selectCity(item: string){
    if(this.selectedCity!=item){
      this.selectedCity = item;
    }
  }
}
