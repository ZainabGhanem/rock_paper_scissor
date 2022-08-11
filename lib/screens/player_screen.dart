import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rock_paper_scissors/enum/game_choices.dart';

import '../enum/result.dart';

class PlayerScreen  extends StatefulWidget {

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {

  GameChoices? userChoice;
  GameChoices? computerChoice;
  Result ? finalResult;

  List cpuSelections = [
    GameChoices.rock,
    GameChoices.paper,
    GameChoices.scissor,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff848890),
      body:Center(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Text('Let\'s Play!',style:GoogleFonts.uchen(textStyle:TextStyle(color: Colors.white, fontSize: 30),) ),
            Text('Pick your choice', style:GoogleFonts.uchen(textStyle:TextStyle(color: Colors.white, fontSize:25 ),) ),
            Column(
              children: [
                 GestureDetector(
                    onTap: () {
                      setState(() {
                        userChoice = GameChoices.rock;
                      });
                      makeComputerSelect();
                      theScore();
                    },
                    child: Image.asset(
                      'assets/images/rock.png',
                      height: 100,
                    ),
                  ),
                Text('Rock', style:GoogleFonts.uchen(textStyle:TextStyle(color: Colors.white, fontSize: 20),))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                   GestureDetector(
                    onTap: () {
                      setState(() {
                        userChoice = GameChoices.scissor;
                      });
                      makeComputerSelect();
                      theScore();
                    },
                    child: Image.asset(
                      'assets/images/paper.png',
                      height: 100,
                    ),
                  ),
                  Text('Paper',style:GoogleFonts.uchen(textStyle:TextStyle(color: Colors.white, fontSize: 20),))
                ],
              ),
            ),
            Column(
              children: [
                 GestureDetector(
                    onTap: () {
                      setState(() {
                        userChoice = GameChoices.scissor;
                      });
                      makeComputerSelect();
                      theScore();
                    },
                    child: Image.asset(
                      'assets/images/scissor.png',
                      height: 100,
                    ),
                  ),
                Text('Scissors', style:GoogleFonts.uchen(textStyle:TextStyle(color: Colors.white, fontSize: 20),))
              ],
            )
          ],
        ),
      ),
      
    );  
  }
 makeComputerSelect() {
    setState(() {
      Random random = Random();
      int selected = random.nextInt(3);
      computerChoice = cpuSelections[selected];
    });
 }

  theScore() {
    //  rock
    if (userChoice == GameChoices.rock && computerChoice == GameChoices.paper) {
      setState(() {
        finalResult = Result.lose;
      });
      
    }
    if (userChoice == GameChoices.rock && computerChoice == GameChoices.rock) {
      setState(() {
        finalResult = Result.draw;
      });
    }
    if (userChoice == GameChoices.rock && computerChoice == GameChoices.scissor) {
      setState(() {
        finalResult = Result.win;
      });
    }

    // paper

    if (userChoice == GameChoices.paper && computerChoice == GameChoices.paper) {
      setState(() {
        finalResult = Result.draw;
      });
    }
    if (userChoice == GameChoices.paper && computerChoice == GameChoices.scissor) {
      setState(() {
        finalResult = Result.lose;
      });
    }
    if (userChoice == GameChoices.paper && computerChoice == GameChoices.rock) {
      setState(() {
        finalResult = Result.win;
      });
    }

    // scissor
    if (userChoice == GameChoices.scissor && computerChoice == GameChoices.paper) {
      setState(() {
        finalResult = Result.win;
      });
    }

    if (userChoice == GameChoices.scissor && computerChoice == GameChoices.rock) {
      setState(() {
        finalResult = Result.lose;
      });
    }

    if (userChoice == GameChoices.scissor && computerChoice == GameChoices.scissor) {
      setState(() {
        finalResult = Result.draw;
      });
    }
  }

}