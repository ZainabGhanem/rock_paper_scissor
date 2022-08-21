import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/screens/player_screen.dart';

import '../enum/game_choices.dart';
import '../enum/result.dart';

class TheScore extends StatelessWidget {
  TheScore({required this.userChoice, required this.computerChoice,required this.finalResult, required this.computerScore, required this.userScore});
  GameChoices? userChoice;
  GameChoices? computerChoice;
  Result ? finalResult;
    int  userScore;
  int  computerScore;

@override
  Widget build(BuildContext context) {
        // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff848890),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80,),
            Text(finalResult!.name.toUpperCase(),style: TextStyle(fontSize: 50, color: Colors.amber),),
            SizedBox(height: 50,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
                Column(
                  children: [
                    Text('User', style: TextStyle(fontSize: 30, color: Colors.white),),
                    Image.asset('assets/images/${userChoice!.name}.png', height: 150,width: 150,),
                  ],
                ),
                Column(
                  children: [
                    Text('Computer', style: TextStyle(fontSize: 30, color: Colors.white)),
                    Image.asset('assets/images/${computerChoice!.name}.png',height: 150, width: 150,),
                  ],
                )
             ],
           ),
           SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('User', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                    Text(userScore.toString(), style: TextStyle(color: Colors.white, fontSize: 25))
                  ],
                ),
                Column(
                  children: [
                    Text('Computer', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
                    Text(computerScore.toString(), style: TextStyle(color: Colors.white, fontSize: 25)),
                  ],
                )
              ],
            ),
           SizedBox(height: 50,),
           ElevatedButton(
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>PlayerScreen(/*userScore: userScore,computerScore: computerScore,*/)));
             }, 
           child: Text('Play Again')
           )
          ],
        ),
      ),
    );
  }
}
 