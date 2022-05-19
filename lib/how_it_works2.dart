import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savebox/page_menu.dart';
import 'package:savebox/welcome_page2.dart';
import 'delayed_animation.dart';
import 'main.dart';
import 'social_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'FadeAnimation.dart';
import 'login_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'page_menu.dart';

class HowItWorks2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton (
          icon:const Icon(
            Icons.arrow_back,
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
                      "In case of accident",
                      style: GoogleFonts.poppins(
                        color: d_red, 
                        fontSize:25,
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
                        height: 70,
                        child: Image.asset('assets/voiture.png'),
                      ),
                    ),
                    DelayedAnimation(
                      delay: 4000,
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 30,
                          bottom: 15,
                        ),
                        child: Text(
                          "The savebox will detect the intensity of the shock thanks to its sensors.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    DelayedAnimation(
                      delay: 5000,
                      child: Container(
                        height: 70,
                        child: Image.asset('assets/soin.png'),
                      ),
                    ),
                    
                    DelayedAnimation(
                      delay: 6000,
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 30,
                          bottom: 100,
                        ),
                        child: Text(
                          "When the shock reaches a threshold, the savebox contacts for you the emergencies.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    DelayedAnimation(
                      delay: 7000,
                      child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: d_red,
                            shape: StadiumBorder(),
                            padding: EdgeInsets.all(20),
                          ),
                          child: Text ('COMPLETE'),
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                              builder: (context) => PageMenu(),
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