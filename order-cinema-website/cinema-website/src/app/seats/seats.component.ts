import { Component } from '@angular/core';

@Component({
  selector: 'app-seats',
  templateUrl: './seats.component.html',
  styleUrls: ['./seats.component.scss']
})
export class SeatsComponent {
  seats: { row: string; column: number; status: string; }[][] = [[]];

  constructor() {
    const rows = ['A', 'B', 'C', 'D', 'E', 'F'];
    const columns = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    for (let i = 0; i < rows.length; i++) {
      this.seats[i] = [];
      for (let j = 0; j < columns.length; j++) {
        if(i == 3 && j == 3) {
          this.seats[i][j] = {
            row: rows[i],
            column: columns[j],
            status: 'BOOKED'
          }
        } else {
          this.seats[i][j] = {
            row: rows[i],
            column: columns[j],
            status: 'free'
          }
        }

      }
    }
  }

  getImageUrl(status: string) {
    if (status === 'free') {
      return '../../assets/images/seat.svg';
    } else if (status === 'BOOKED') {
      return '../../assets/images/seat-booked.svg';
    } else {
      return '../../assets/images/seat-selected.svg';
    }
  }

  handleSelectSeats() {
    console.log(this.selectedSeats());
  }

  selectedSeats() {
    let selectedSeats = [];
    for (let i = 0; i < this.seats.length; i++) {
      for (let j = 0; j < this.seats[i].length; j++) {
        if (this.seats[i][j].status === 'SELECTED') {
          selectedSeats.push(this.seats[i][j]);
        }
      }
    }
    return selectedSeats;
  }
}
