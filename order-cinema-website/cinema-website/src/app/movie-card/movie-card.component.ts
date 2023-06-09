import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-movie-card',
  templateUrl: './movie-card.component.html',
  styleUrls: ['./movie-card.component.scss']
})
export class MovieCardComponent {
  @Input() title = "";
  @Input() subTitle = "";
  @Input() description = "";
  @Input() imageUrl = "";
}
