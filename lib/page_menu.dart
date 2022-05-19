import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savebox/home.dart';
import 'package:savebox/profile.dart';
import 'package:savebox/start.dart';
import 'package:savebox/welcome_page2.dart';
import 'delayed_animation.dart';
import 'main.dart';
import 'social_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'FadeAnimation.dart';
import 'login_page.dart';
import 'home.dart';
import 'profile.dart';
import 'start.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class PageMenu extends StatefulWidget {
  @override
  State<PageMenu> createState() => _PageMenuState();
}

class _PageMenuState extends State<PageMenu> {
  List pages = [
    HomePage(),
    startPage(),
    ProfilePage(),
    
  ];

  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex= index;
    });
  }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 217, 213, 213),
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: d_red,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showUnselectedLabels: false,
          elevation:0,
          items: [
            BottomNavigationBarItem(
              label:'Home',
              icon: FaIcon(FontAwesomeIcons.houseUser)
            ),
            BottomNavigationBarItem(
              label:'start',
              icon: FaIcon(FontAwesomeIcons.play)
            ),
            BottomNavigationBarItem(
              label:'profile',
              icon: FaIcon(FontAwesomeIcons.user)
            )
          ]
        )
      );
    }


}


/*
class _PageMenuState extends State<PageMenu> {
  int index= 0;
  final screens = [
    PageMenu(),
    ProfilePage(),
    StartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: d_red, 
          labelTextStyle: MaterialStateProperty.all(
            GoogleFonts.poppins(
              color: Color.fromARGB(255, 16, 4, 4),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      
        child: NavigationBar (
          height: 70,
          backgroundColor: Color.fromARGB(255, 217, 213, 213),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: index,
          animationDuration: Duration(seconds:3),
          onDestinationSelected: (index)=> 
            setState(() => this.index = index ),
            

          destinations: const [
            NavigationDestination(
              icon: FaIcon(FontAwesomeIcons.map), 
              label: 'Localisation'
            ),
            NavigationDestination(
              icon: FaIcon(FontAwesomeIcons.play), 
              label: 'GO!'
            ),
            NavigationDestination(
              icon: FaIcon(FontAwesomeIcons.user), 
              label: 'Profile'
            ),
          ],
        ),
      ),
    );

  }
    
}*/



