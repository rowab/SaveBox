import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'delayed_animation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';
import 'login_page.dart';

class SocialPage extends StatelessWidget {
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
            image: AssetImage("assets/fond_home.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            DelayedAnimation(
              delay: 1000, 
              child: Container(
                height: 300,
                child: Image.asset("assets/logo1.png"),
              ),
            ),
            DelayedAnimation(
              delay: 1500, 
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 30,
                ),
                child: Column(
                  children:[
                    Text(
                      "The adventure starts begins now",
                      style: GoogleFonts.poppins(
                        color: d_red, 
                        fontSize:19,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height:10),
                    Text(
                      "Register to have access to the whole application",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 189, 188, 188), 
                        fontSize:18,
                      ),
                    ),

                  ]
                )
              ),
            ),
            DelayedAnimation(
              delay: 3500,
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 40,
                ),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage() ,
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        primary: d_red,
                        padding:EdgeInsets.all(20),
                      ),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.center ,
                        children: [
                          Icon(Icons.mail_outline_outlined),
                          SizedBox(width:10),
                          Text(
                            'EMAIL',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ),
                    SizedBox(height:20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage() ,
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        primary: Color(0xFF576dff),
                        padding:EdgeInsets.all(20),
                      ),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.center ,
                        children: [
                          FaIcon(FontAwesomeIcons.facebook),
                          SizedBox(width:10),
                          Text(
                            'FACEBOOK',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ),
                    SizedBox(height:20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage() ,
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        primary:Colors.white,
                        padding:EdgeInsets.all(20),
                      ),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.center ,
                        children: [
                          FaIcon(FontAwesomeIcons.google, color: Colors.black),
                          SizedBox(width:10),
                          Text(
                            'GOOGLE',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}