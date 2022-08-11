import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rock_paper_scissors/screens/log_in.dart';
import 'package:rock_paper_scissors/screens/player_screen.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff848890),
      body: Center(
        child: Column(
          children: [
             SizedBox(height: 150,),
              Image.asset(
                'assets/images/rps.jpg',
                height: 200,
                width: 200,
              ),
              Text(
              'ROCK PAPER SCISSORS',
              style: GoogleFonts.caveat(textStyle: TextStyle(fontSize: 35,color: Colors.white))
              ),
              ElevatedButton(
              onPressed : (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PlayerScreen()));
              },
              child: Text('Play!')
              ),
               ElevatedButton(
              onPressed : (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
              },
              child: Text('LogOut')
              ),

          ]
        ),
      ),
    );
  }


}