import { Component } from '@angular/core';


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
export class MoviesComponent {
  selectMovie: Movie | undefined;
  movies: Movie[] = [
    // {
    //   title: "SAINT ANTONIEN",
    //   subTitle: "Switzerland Alps",
    //   description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis, assumenda quas amet doloremque sit, quasi quidem voluptatibus libero, incidunt aut vero? Vitae architecto commodi, officia dolorem quas voluptas! Expedita, excepturi!",
    //   imageUrl: "marek-piwnicki-_kY6w94o-f0-unsplash.jpg"
    // },
    {
      title: "Piazzetta Pier Paolo",
      subTitle: "Italy",
      description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis, assumenda quas amet doloremque sit, quasi quidem voluptatibus libero, incidunt aut vero? Vitae architecto commodi, officia dolorem quas voluptas! Expedita, excepturi!",
      imageUrl: "annie-spratt-7w8bmQJmVNs-unsplash.jpg"
    },
    {
      title: "Ocean",
      subTitle: "Cuba",
      description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis, assumenda quas amet doloremque sit, quasi quidem voluptatibus libero, incidunt aut vero? Vitae architecto commodi, officia dolorem quas voluptas! Expedita, excepturi!",
      imageUrl: "febe-vanermen-gEkGDfEU6bc-unsplash.jpg"
    },
    {
      title: "My Room",
      subTitle: "USA",
      description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis, assumenda quas amet doloremque sit, quasi quidem voluptatibus libero, incidunt aut vero? Vitae architecto commodi, officia dolorem quas voluptas! Expedita, excepturi!",
      imageUrl: "premium_photo-1684445035420-cc3aae0560cc.webp"
    },
    {
      title: "Sahara",
      subTitle: "Egypt",
      imageUrl: "photo-1547235001-d703406d3f17.webp",
      description: "Sahara, Largest desert in the world, encompassing almost all of northern Africa. Covering an area of about 3.3 million sq mi (8.6 million sq km), it is bounded by the Atlantic Ocean, the Atlas Mountains, the Mediterranean Sea, the Red Sea, and the Sahel region."
    }
  ]

  constructor() {
    this.selectMovie = this.movies[0];
  }
}
