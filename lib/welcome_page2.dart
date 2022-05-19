import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'delayed_animation.dart';
import 'main.dart';
import 'social_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'FadeAnimation.dart';
import 'page_menu.dart';

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {
   final List<List<String>> products = [
    [
      'assets/carroussel1.jpg',
      'Reassure your loved ones',
      'Share your journey with real-time tracking'
    ],
    [
      'assets/carroussel2.jpg',
      'It happens even to the best',
      'the savebox detects falls and sends help'
    ],
    [
      'assets/carroussel4.jpg',
      'Your travelling companion',
      'Explore the roads with the GPS'
    ],
    /*[
      'assets/carroussel4.jpg',
      'The adventure begins now'
      'Register and start the adventure with us'
    ]*/
  ];

  int currentIndex = 0;

  void _next() {
    setState(() {
      if (currentIndex < products.length -1) {
        currentIndex++;
      } else {
        currentIndex = currentIndex;
      }
    });
  }

  void _preve() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = 0;
      }
    });
  }

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
        color: Colors.white,
        child: Column(
          children: <Widget>[
            GestureDetector(
              onHorizontalDragEnd: (DragEndDetails details) {
                if (details.velocity.pixelsPerSecond.dx > 0) {
                  _preve();
                } else if (details.velocity.pixelsPerSecond.dx < 0) {
                  _next();
                }
              },
              child: FadeAnimation(.8, Container(
                width: double.infinity,
                height: 550,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(products[currentIndex][0]),
                    fit: BoxFit.cover
                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 95, 95, 95).withOpacity(.9),
                        Colors.grey.withOpacity(.0),
                      ]
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FadeAnimation(1, Container(
                        width: 90,
                        margin: EdgeInsets.only(bottom: 60),
                        child: Row(
                          children: _buildIndicator(),
                        ),
                      ))
                    ],
                  ),
                ),
              )),
            ),
            Expanded(
              child: Transform.translate(
                offset: Offset(0, -40),
                child: FadeAnimation(1, Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                        1.3, 
                        Text(
                          products[currentIndex][1], 
                          textAlign: TextAlign.center, 
                          style: GoogleFonts.poppins(
                            color: d_red, 
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        
                        ),
                      ),
                      SizedBox(width: 10,),
                      
                      Row(
                        children: <Widget>[
                          FadeAnimation(
                            1.4, 
                            Text(
                          products[currentIndex][2], 
                          textAlign: TextAlign.center, 
                          style: GoogleFonts.poppins(
                            color: Colors.grey, 
                            fontSize: 15,
                            
                          ),
                        
                        ),
                          ),SizedBox(width: 10,),
                          
                          
                        ],
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 40,
                            horizontal: 60,
                          ),
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: d_red,
                              shape: StadiumBorder(),
                              padding: EdgeInsets.all(5),
                            ),
                            child: Text ('PASS'),
                            onPressed: () {
                              Navigator.push(
                                context, 
                                MaterialPageRoute(
                                builder: (context) => SocialPage(),
                                ),
                              );
                            },
                          ),
                         ),
                      )
                    ],
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return Expanded(
      child: Container(
        height: 4,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isActive ? Colors.grey[800] : Colors.white
        ),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for(int i = 0; i < products.length; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}