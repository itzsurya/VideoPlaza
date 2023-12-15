  import 'package:flutter/material.dart';
import 'package:moviehut/category/CdCollection.dart';
import 'package:moviehut/category/cd.dart';
import 'package:moviehut/category/controller/feedbackpage.dart';
import 'package:moviehut/category/englishweb.dart';
import 'package:moviehut/category/hollywood.dart';
import 'package:moviehut/category/tamil.dart';
import 'package:moviehut/category/tamildub.dart';
import 'package:moviehut/category/tamilweb.dart';

    
    void main() {
  runApp(const Collections());
}
class Collections extends StatelessWidget {
  const Collections({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our Offerings',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Our Offerings.. ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 1, 9, 99),
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 10.0),
                const Text(
                    "You can see our all collections here by clicking the categories..",
                    style: TextStyle(
                        color: Color(0xFFA895D1),
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal)),
                const SizedBox(height: 30.0),
                TextButton(
                      onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CdCollections(),
                  ),
                );
                   
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.movie_edit, color: Color(0xFFED92A2)),
                      SizedBox(width: 50.0),
                      Text('CD Collections',
                          style: TextStyle(
                              color: Color(0xFFA294C2),
                              fontSize: 26.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                   TextButton(
                      onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => tamil(),
                  ),
                );
                   
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.movie_edit, color: Color(0xFFED92A2)),
                      SizedBox(width: 50.0),
                      Text('Tamil Movies',
                          style: TextStyle(
                              color: Color(0xFFA294C2),
                              fontSize: 26.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                     TextButton(
                      onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => tamildub(),
                  ),
                );
                   
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.movie_edit, color: Color(0xFFED92A2)),
                      SizedBox(width: 50.0),
                      Text('Tamil Dubbed Movies',
                          style: TextStyle(
                              color: Color(0xFFA294C2),
                              fontSize: 26.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                     TextButton(
                      onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => hollywood(),
                  ),
                );
                   
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.movie_edit, color: Color(0xFFED92A2)),
                      SizedBox(width: 50.0),
                      Text('Hollywood Movies',
                          style: TextStyle(
                              color: Color(0xFFA294C2),
                              fontSize: 26.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                      TextButton(
                      onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => tamilweb(),
                  ),
                );
                   
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.movie_edit, color: Color(0xFFED92A2)),
                      SizedBox(width: 50.0),
                      Text('Tamil Web Series',
                          style: TextStyle(
                              color: Color(0xFFA294C2),
                              fontSize: 26.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                      TextButton(
                      onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => englishweb(),
                  ),
                );
                   
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.movie_edit, color: Color(0xFFED92A2)),
                      SizedBox(width: 50.0),
                      Text('English Web series',
                          style: TextStyle(
                              color: Color(0xFFA294C2),
                              fontSize: 26.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}