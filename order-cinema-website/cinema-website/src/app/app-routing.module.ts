import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { PickShowtimeComponent } from './pick-showtime/pick-showtime.component';
import { MoviesComponent } from './movies/movies.component';
import { SeatsComponent } from './seats/seats.component';
import { BillComponent } from './bill/bill.component';

const routes: Routes = [
  {
    path: '',
    component: MoviesComponent,
  },
   { path: 'ticketing/:movieId', component: PickShowtimeComponent },
   { path: 'seats/:movieId', component: SeatsComponent },
   { path: 'bill/:movieId', component: BillComponent },
   {
    path: '**',
    redirectTo: '',
    pathMatch: 'full',
  },

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
