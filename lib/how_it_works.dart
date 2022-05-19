import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savebox/how_it_works2.dart';
import 'package:savebox/welcome_page2.dart';
import 'delayed_animation.dart';
import 'main.dart';
import 'social_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'FadeAnimation.dart';
import 'login_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HowItWorks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton (
          icon:const Icon(
            Icons.close,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fond3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            DelayedAnimation(
              delay: 1500, 
              child: Container(
                
                child: Column(
                  children:[
                    SizedBox(height:70),
                    Text(
                      "How it works ?",
                      style: GoogleFonts.poppins(
                        color: d_red, 
                        fontSize:35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height:70),
                    
                    

                  ]
                )
              ),
            ),
            SizedBox(height:70),
            DelayedAnimation(
              delay: 2000, 
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 35,
                ),
                child: Column(
                  children: [
                    DelayedAnimation(
                      delay: 3000,
                      child: Container(
                        height: 100,
                        child: Image.asset('assets/coeur.png'),
                      ),
                    ),
                    DelayedAnimation(
                      delay: 4000,
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 30,
                          bottom: 100,
                        ),
                        child: Text(
                          "The protection is activated. The SaveBox analyses the sensors to detect an accident.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    DelayedAnimation(
                      delay: 5000,
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 30,
                          bottom: 20,
                        ),
                        child: Text(
                          "What happens in case of an accident?",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    DelayedAnimation(
                      delay: 6000,
                      child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: d_red,
                            shape: StadiumBorder(),
                            padding: EdgeInsets.all(20),
                          ),
                          child: Text ('FOLLOWING'),
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                              builder: (context) => HowItWorks2(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ]
                ),
                
              )
              
              
              
            )
          ],

        ),






      ),
      
    );
  }
}