import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/screens/home_screen.dart';
import 'package:rock_paper_scissors/screens/registeration.dart';

class LogIn extends StatefulWidget{
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final _formKey = GlobalKey<FormState>();
   return Scaffold(
     backgroundColor: Color(0xff848890),
     body: Form(
       key:_formKey,
       child: Column(
         children: [
           SizedBox(
                    height: 40,
                  ),
                  Text('LogIn', style: TextStyle(fontSize: 30),),
                  Image.asset(
                    'assets/images/rps.jpg',
                    height: 150,
                    width: 150,
                  ),
                  TextFormField(
                    validator: (input) {
                      if (input == null || input.isEmpty) {
                        return ('please enter your username');
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      labelText: 'Username',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    validator: (input) {
                      if (input == null || input.isEmpty) {
                        return ('please enter your password');
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Need an accoun? '),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Registeration()));
                        },
                        child: Text('Sign Up'),
                      )
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => HomeScreen()));
                        }
                      },
                      child: const Text('LogIn'))
         ],
       ),
     ),
   );
  }

  
}