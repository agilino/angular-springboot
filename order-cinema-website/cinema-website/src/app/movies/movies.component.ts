import { Component, OnInit } from '@angular/core';
import { RestService } from '../services/rest.service';


export interface Movie {
  title: string;
  subTitle: string;
  imageUrl: string;
  description: string;
}

@Component({
  selector: 'app-movies',
  templateUrl: './movies.component.html',
  styleUrls: ['./movies.component.scss']
})
export class MoviesComponent implements OnInit {
  selectMovie: Movie | undefined;
  movies: Movie[] = [];

  constructor(private restService: RestService) {
  }

  ngOnInit(): void {
    this.loadMovies();
  }

  loadMovies() {
    this.restService.getMovieList().subscribe((result) => {
      this.movies = result as Movie[];
      this.selectMovie = this.movies[0];
    });
  }
}
