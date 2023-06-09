import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Movie } from '../models/movie';

@Injectable({
  providedIn: 'root'
})
export class MovieService {

  Movies: Movie[] = [];

  setMovies(movies: Movie[]) {
    this.Movies = movies;
  }

  getMovies() {
    return this.Movies;
  }

}
