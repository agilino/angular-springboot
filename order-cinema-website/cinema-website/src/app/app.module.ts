import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { PickShowtimeComponent } from './pick-showtime/pick-showtime.component';
import { MoviesComponent } from './movies/movies.component';
import { MovieCardComponent } from './movie-card/movie-card.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { VietNamDatePipe } from './pipes/date-pipe';

@NgModule({
  declarations: [
    AppComponent,
    PickShowtimeComponent,
    MoviesComponent,
    MovieCardComponent,
    VietNamDatePipe
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NgbModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
