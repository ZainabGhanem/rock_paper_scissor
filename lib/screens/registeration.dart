import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/screens/log_in.dart';

class Registeration extends StatefulWidget {
  @override
  _RegisterationState createState() => _RegisterationState();
}

class _RegisterationState extends State<Registeration> {
  @override
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff848890),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text('Registeration', style: TextStyle(fontSize: 30),),
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
                      labelText: 'Repeated-Password',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => LogIn()));
                        },
                        child: Text('LogIn'),
                      )
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => LogIn()));
                        }
                      },
                      child: const Text('Submit'))
                ],
              ),
            ),
          )),
    );
  }
}
