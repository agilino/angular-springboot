import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { PickShowtimeComponent } from './pick-showtime/pick-showtime.component';
import { MoviesComponent } from './movies/movies.component';
import { MovieCardComponent } from './movie-card/movie-card.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { VietNamDatePipe } from './pipes/date-pipe';
import { HeaderComponent } from './header/header.component';
import { RestService } from './services/rest.service';
import { SeatsComponent } from './seats/seats.component';
import { SeatPipe } from './pipes/seat-pipe.component';
import { DatePipe } from '@angular/common';

@NgModule({
  declarations: [
    AppComponent,
    PickShowtimeComponent,
    MoviesComponent,
    MovieCardComponent,
    VietNamDatePipe,
    HeaderComponent,
    SeatsComponent,
    SeatPipe
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NgbModule,
    HttpClientModule
  ],
  providers: [
    RestService,
    DatePipe
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
