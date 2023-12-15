import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:moviehut/screens/dark_theme.dart';
import 'package:moviehut/screens/profile_screen.dart';
import '../models/collections.dart';
import 'movie_screen.dart';
import '../models/movie_model.dart';
import '../widgets/movie_list_item.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Movie> movies = Movie.movies;
  
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: _CustomClipper(),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFF000B49),
            child: Center(
              child: Text(
                'Explore',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 150,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline6,
                      children: [
                        TextSpan(
                          text: 'Our Featured ',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const TextSpan(
                          text: 'Collections',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  for (final movie in movies)
                  
                    InkWell(
              
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => MovieScreen(movie: movie),),);
                      
                      
                   },
                      child: MovieListItem(
                        imageUrl: movie.imagePath,
                        name: movie.name,
                       
                      ),
                    ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}



List<Widget> pages = [
  HomeScreen(),
  Collections(),
  profile_screen(),
  ContactsPage(),
];

class navi extends StatefulWidget {
  @override
  _naviState createState() => _naviState();
}

class _naviState extends State<navi> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: pages[_selectedIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 29, 2, 77),
        color: Colors.deepPurple.shade200,
        animationDuration: Duration(milliseconds: 300),// Customize the background color
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.video_collection, size: 30),
          Icon(Icons.person_2, size: 30),
          Icon(Icons.contact_support, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}