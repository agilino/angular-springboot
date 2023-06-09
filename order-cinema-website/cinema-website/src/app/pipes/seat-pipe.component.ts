import {Pipe, PipeTransform} from '@angular/core';

@Pipe({name: 'seat'})

export class SeatPipe implements PipeTransform {
  transform(value: { row: string; column: number; status: string; }) {
    return value.row + value.column;
  }
}
