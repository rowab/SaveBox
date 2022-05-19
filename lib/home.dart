

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



class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with TickerProviderStateMixin{
  List a = [
    "assets/chrono.jpg"
    "assets/canda.jpg"
    "assets/fond3.jpg"
  ];
  
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Container (
            padding: const EdgeInsets.only(top:70, left:20),
            child: Row(
              children: [
                Icon(Icons.menu, size:30,color: Colors.black ),
                Expanded(child:Container()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                  )
                )
              ]
            ),
          ),
          SizedBox(height: 40,),
          Container(
            margin: const EdgeInsets.only(left:20),
            child: Text(
              "Discover",
              style: GoogleFonts.poppins(
                color: d_red,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator:CircleTabIndicator(color:d_red, radius: 4), 
                tabs: [
                  Tab(text:"Places"),
                  Tab(text:"Localisation"),
                  Tab(text:"More"), 
                ]
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left:20),
            height: 350,
            width: double.maxFinite,
            child: TabBarView(
              controller:_tabController,
              children: [
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      margin: const EdgeInsets.only(right:15, top:15),
                      width:200,
                      height:300,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(20),
                        color: Colors.white,
                        image:DecorationImage(
                          image: AssetImage("assets/canda.jpg"),
                          fit: BoxFit.cover
                        ),
                        
                      ),
                    );
                    
                  }
                ),
                Text("There"),
                Text("Bye")
              
              ]
            ), 
          ),
          
          
        ],
        
      )

    );
      
    
  }
}

typedef VoidCallback = void Function();

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator ({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]){
    return _CirclePainter(color: color, radius:radius);
  }
}

class _CirclePainter extends BoxPainter{
  final Color color;
  double radius;
  _CirclePainter ({required this.color, required this.radius});

  @override
  void paint (Canvas canvas, Offset offset, ImageConfiguration configuration){
    Paint _paint= Paint();
    _paint.color=color;
    _paint.isAntiAlias=true;
    final Offset circleOffset = Offset(configuration.size!.width/2 -radius/2 , configuration.size!.height-radius);
    canvas.drawCircle(offset+circleOffset, radius, _paint);
  }
}

