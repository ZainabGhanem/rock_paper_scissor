import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/screens/home_screen.dart';
import 'package:rock_paper_scissors/screens/log_in.dart';
import 'package:rock_paper_scissors/screens/my_splash.dart';
import 'package:rock_paper_scissors/screens/player_screen.dart';
import 'package:rock_paper_scissors/screens/registeration.dart';
import 'package:rock_paper_scissors/screens/the_score.dart';

class MyApp   extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TheScore()
    );
  }
}