import 'package:moviehut/category/cd.dart';

class Movie {
  final String name;
  final String imagePath;
  final String catogory;
  final String des;


const Movie({
    required this.name,
    required this.imagePath,
    required this.catogory,
    required this.des,
    
  });

  static const movies = [
     Movie(
      name: 'Cd Collections',
      imagePath:'assets/homeimg/theater.jpg',
     catogory: 'theater print',
     des: ' S. Shankar | K.S. Ravikumar | Cheran | Bala | A.R. Murugadoss\n A.R. Murugadoss | Mani Ratnam | Gautham Vasudev Menon | Ameer Sultan | Dharani',
 
     
    ),
    Movie(
      name: 'Tamil Movies',
      imagePath:
          'assets/homeimg/tamil2.jpg',
      catogory: 'tamil',
      des:' S. Shankar | K.S. Ravikumar | Cheran | Bala | A.R. Murugadoss\n A.R. Murugadoss | Mani Ratnam | Gautham Vasudev Menon | Ameer Sultan | Dharani',
    ),
    Movie(
      name: 'Tamil Dubbed',
      imagePath:
          'assets/homeimg/tamildub.png',
      catogory: 'tamil dubbed',
      des:'  Steven Spielberg | Alfred Hitchcock | Martin Scorsese | Christopher Nolan |  James Cameron\n  Francis Ford Coppola | Quentin Tarantino | Guy Ritchie | David Fincher | Stanley Kubrick',

    ),
    Movie(
      name: 'Tamil Webseries',
      imagePath:
          'assets/homeimg/tamilweb.jpg',
       catogory: 'tamil webseries',
      des:'  Steven Spielberg | Alfred Hitchcock | Martin Scorsese | Christopher Nolan |  James Cameron\n  Francis Ford Coppola | Quentin Tarantino | Guy Ritchie | David Fincher | Stanley Kubrick',
    ),
    Movie(
      name: 'English Movies',
      imagePath:
          'assets/homeimg/english2.png',
    catogory: 'english',
      des:'  Steven Spielberg | Alfred Hitchcock | Martin Scorsese | Christopher Nolan |  James Cameron\n  Francis Ford Coppola | Quentin Tarantino | Guy Ritchie | David Fincher | Stanley Kubrick',
    ),
    Movie(
      name: 'English Webseries',
      imagePath:
          'assets/homeimg/engweb2.jpeg',
     catogory: 'english Webseries',
      des:'  Steven Spielberg | Alfred Hitchcock | Martin Scorsese | Christopher Nolan |  James Cameron\n  Francis Ford Coppola | Quentin Tarantino | Guy Ritchie | David Fincher | Stanley Kubrick',
    ),
    
   
  ];
}
