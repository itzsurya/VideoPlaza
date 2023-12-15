import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moviehut/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
with SingleTickerProviderStateMixin {
  @override
void initState(){
  super.initState();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  Future.delayed(Duration(seconds: 2),(){
Navigator.of(context).pushReplacement(MaterialPageRoute(
  builder:(_) =>  navi(), ));
  });

}  

@override
void dispose(){
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
  super.dispose();
}

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/homeimg/video_point.png'),fit: BoxFit.fitWidth,),
        ),
      ),
    );
  }
}