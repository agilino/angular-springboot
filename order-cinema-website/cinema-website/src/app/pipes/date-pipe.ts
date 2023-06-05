import { Pipe, PipeTransform } from "@angular/core";

@Pipe({
  name: 'VietNamDatePipe',
})
export class VietNamDatePipe implements PipeTransform {
  transform(date: string | null): string {
    switch (date) {
      case "Sun":
        return "CN";
      case "Mon":
        return "Th 2";
      case "Tue":
        return "Th 3";
      case "Wed":
        return "Th 4";
      case "Thu":
        return "Th 5";
      case "Fri":
        return "Th 6";
      case "Sat":
        return "Th 7";
      default:
        return "Th 2";
  }
}
}
