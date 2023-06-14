import {Pipe, PipeTransform} from '@angular/core';

@Pipe({name: 'seat'})

export class SeatPipe implements PipeTransform {
  transform(value: { row: number; column: string; status: string; }) {
    return value.row + value.column;
  }
}
