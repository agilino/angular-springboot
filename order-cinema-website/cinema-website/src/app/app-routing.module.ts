import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { PickShowtimeComponent } from './pick-showtime/pick-showtime.component';

const routes: Routes = [
  { path: 'ticketing', component: PickShowtimeComponent },
];



@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
