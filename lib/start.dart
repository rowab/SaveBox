import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savebox/welcome_page2.dart';
import 'delayed_animation.dart';
import 'main.dart';
import 'social_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'FadeAnimation.dart';
import 'login_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart'; 

class StartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(

        "StartPage"
    ),
      
    );
  }
}

class startPage extends StatefulWidget {
  const startPage({ Key? key }) : super(key: key);

  @override
  State<startPage> createState() => _startPageState();
}

class _startPageState extends State<startPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/chrono.jpg"),
            fit: BoxFit.cover,
          ),
        ),
       ),
      
    );
  }
}