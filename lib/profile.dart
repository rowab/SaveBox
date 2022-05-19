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
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class ProfilePage extends StatefulWidget{
  @override
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name="";
  String firstname="";
  CollectionReference Passengers = FirebaseFirestore.instance.collection('Passengers');
  @override
  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    addStudent();
    
    


    return  Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Color(0xFFffffff),
        body: Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Form(
            key: formKey, //key for form
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:10),
                Text(
                  "Information form", 
                  style: GoogleFonts.poppins(
                    color: d_red, 
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                
                Text(
                  "Completed your information as well as your passengers !", 
                  style: GoogleFonts.poppins(
                    color: Colors.grey, 
                    fontSize: 20,
                    
                  ),
                ),
                SizedBox(height: 45),
                TextFormField(
                  decoration: InputDecoration(
                    labelText:"Enter your first name"),
                  
                  onChanged: (text)=> setState ((){
                    firstname=text;

                  }),

              

                  
                  validator:(value){
                    if (value!.isEmpty || !RegExp(r'^[a-z A-Z+$]').hasMatch(value!)){
                      return "Enter correct name";
                    }else{
                      return null;
                    }
                  }
              
                ),
                
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText:"Enter your last name"
                  ),
                  validator:(value){
                    if (value!.isEmpty || !RegExp(r'^[a-z A-Z+$]').hasMatch(value!)){
                      return "Enter correct last name";
                    }else{
                      return null;
                    }
                  }
                ),
                SizedBox(height:10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText:"How old are you"
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText:"Enter your number"
                  ),
                  /*validator:(value){
                    if (value!.isEmpty || !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[0,1}[-\s\./0-9] +$').hasMatch(value!)){
                      return "Enter correct number";
                    }else{
                      return null;
                    }
                  }*/
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText:"Enter your blood group"
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText:"Do you have health problems?"
                  ),
                ),
                SizedBox(height: 10),
                Row (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ADD PROFILE", 
                      style: GoogleFonts.poppins(
                        color: Colors.grey, 
                        fontSize: 15,
                      )
                    ),
                    NeumorphicButton(
                      margin: EdgeInsets.only(top:12),
                      onPressed: (){
                        if(formKey.currentState!.validate()){
                          final snackBar = SnackBar(content: Text("Submitting"));
                          _scaffoldKey.currentState!.showSnackBar(snackBar);
                        }

                      },
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.circle(),

                      ),

                    )
                  
                  ],
                      
                  
                  
                ),
                

              ],
              
            ),
            
          ),
          
        )
        
    );
                
    
  }
  Future<void> addStudent() {
      // Calling the collection to add a new user
      return Passengers
          //adding to firebase collection
          .add({
            //Data added in the form of a dictionary into the document.
            'fistname': firstname 
            
          })
          // ignore: avoid_print
          .then((value) => print("Student data Added"))
          // ignore: avoid_print
          .catchError((error) => print("Student couldn't be added."));

    }

  

}

