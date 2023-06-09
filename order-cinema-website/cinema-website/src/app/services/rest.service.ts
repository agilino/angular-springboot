import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Movie } from '../models/movie';
import { Time } from '../models/time';

@Injectable({
  providedIn: 'root'
})
export class RestService {

  selectMovie : Movie | undefined;

  setSelectMovie(movie: Movie | undefined) {
    this.selectMovie = movie;
  }

  getSelectMovie() {
    return this.selectMovie;
  }

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
  }
