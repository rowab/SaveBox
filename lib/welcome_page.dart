import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savebox/welcome_page2.dart';
import 'delayed_animation.dart';
import 'main.dart';
import 'social_page.dart';


class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 0, 0, 0),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1500,
                child: Container(
                  height: 550,
                  child: Image.asset('assets/logo_home.png'),
                ),
              ),
              DelayedAnimation(
                delay: 4500,
                child: Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 50,
                  ),
                  child: Text(
                    "The box that saves your life, start the adventure with us...",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 3500,
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: d_red,
                      shape: StadiumBorder(),
                      padding: EdgeInsets.all(20),
                    ),
                    child: Text ('GET STARTED'),
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                        builder: (context) => MainPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      )
      
    );
  }
}