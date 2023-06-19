import { Component, OnInit } from '@angular/core';
import { RestService } from '../services/rest.service';
import { Movie } from '../models/movie';
import { Router } from '@angular/router';

@Component({
  selector: 'app-movies',
  templateUrl: './movies.component.html',
  styleUrls: ['./movies.component.scss']
})
export class MoviesComponent implements OnInit {
  selectMovie: Movie | undefined; // Phim được chọn
  movies: Movie[] = []; //Danh sách các phim

  constructor(private restService: RestService, private router: Router) {}

  ngOnInit(): void {
    // *** Các bước thực hiện để lấy danh sách các phim ***
    // 1. Gọi API để lấy danh sách các bộ phim mà bạn vừa khai báo ở restService.
    // 2. Gán kết quả trả về cho biến movies
    // 3. Gán phần tử đầu tiên trong danh sách của biến movies cho biến selectMovie
  }


  handleSelectMovie(movie: Movie | undefined) {
    sessionStorage.setItem('movie', JSON.stringify(movie));
    this.router.navigate(['/ticketing', movie?.id]);
  }
}
