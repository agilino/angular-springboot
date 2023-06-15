import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Movie } from '../models/movie';
import { Time } from '../models/time';

@Injectable({
  providedIn: 'root'
})
export class RestService {

  constructor(private http: HttpClient) { }

  getMovieList() {
    return this.http.get<Movie[]>('/api/movies');
  }

  getMovieById(id: string) {
   return this.http.get<Movie[]>('/api/movies?id=' + id);
  }

  getTimeByMovieId(id: string) {
    return this.http.get<Time[]>('/api/times?id=' + id);
   }

   getChairList(departmentId: string | null, timeId: string | null) {
    return this.http.get<any>(`api/chairs/${departmentId}/${timeId}`);
   }

   createTicket(data: any){
    return this.http.post<any>('/api/tickets', data);
   }

   getCreateTicket(){
    return this.http.get<any>('/api/tickets')
   }
  }
