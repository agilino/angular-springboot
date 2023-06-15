import { Component, OnInit } from '@angular/core';
import { RestService } from '../services/rest.service';

@Component({
  selector: 'app-bill',
  templateUrl: './bill.component.html',
  styleUrls: ['./bill.component.scss']
})
export class BillComponent implements OnInit{

  constructor(private restSevice: RestService) { }
  ngOnInit() {

    this.restSevice.getMovieList
  }


}


