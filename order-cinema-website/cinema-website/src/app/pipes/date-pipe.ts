import { Pipe, PipeTransform } from "@angular/core";

@Pipe({
  name: 'VietNamDatePipe',
})
export class VietNamDatePipe implements PipeTransform {
  transform(date: string | null): string {
    switch (date) {
      case "Sun":
        return "CN";
        break;
      case "Mon":
        return "Th 2";
        break;
      case "Tue":
        return "Th 3";
        break;
      case "Wed":
        return "Th 4";
        break;
      case "Thu":
        return "Th 5";
        break;
      case "Fri":
        return "Th 6";
        break;
      case "Sat":
        return "Th 7";
        break;
      default:
        return "Th 2";
  }
}
}
