import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savebox/how_it_works.dart';
import 'delayed_animation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';
import 'login_page.dart';
import 'how_it_works.dart';

class LoginPage extends StatelessWidget {

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
            image: AssetImage("assets/fond_ecran2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DelayedAnimation(
                    delay: 1500, 
                    child: Text(
                      "Connect email address",
                      style: GoogleFonts.poppins(
                        color: d_red,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height:22),
                  DelayedAnimation(
                    delay: 2500, 
                    child: Text(
                      "It's recommended to connect your email address for us to better protect your information.",
                      style: GoogleFonts.poppins(
                        color:  Color.fromARGB(255, 229, 227, 227),
                        fontSize:16,
                        fontWeight:  FontWeight.w600,
                      ),
                    ),
                  ),
                ],
                
              )
            ),
            SizedBox(height:35),
            LoginForm(),
            SizedBox(height:125),
            DelayedAnimation(
              delay: 6000, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: d_red,
                  padding: EdgeInsets.symmetric(
                    horizontal:125,
                    vertical:13,
                  ),
                ), 
                child: Text(
                  'CONFIRM',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => HowItWorks(),
                    ),
                  );
                },
              ),
            ),

          ]

          
          ),
      )
    );
  }
}

class LoginForm extends StatefulWidget {

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
   var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal:30,
      ),
      child: Column(
        children: [
          DelayedAnimation(
            delay: 3500, 
            child: TextField(
              decoration: InputDecoration(
                labelText:'Your Email',
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          DelayedAnimation(
            delay: 5000,
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
                labelText:'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.visibility,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState((){
        
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}