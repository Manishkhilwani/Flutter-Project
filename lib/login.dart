import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:office/buy.dart';
import 'package:office/main.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String _email, _password;

  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login here'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: 'Email'),
              onChanged: (value) {
                setState(() {
                  _email = value.trim();
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: 'password'),
              onChanged: (value) {
                setState(() {
                  _password = value.trim();
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Theme.of(context).accentColor,
                  ),
                  onPressed: () {
                    auth.signInWithEmailAndPassword(
                        email: _email, password: _password);
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => bookit(),
                      ),
                    );
                  },
                  child: Text('Signin')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Theme.of(context).accentColor,
                  ),
                  onPressed: () {
                    auth.createUserWithEmailAndPassword(
                        email: _email, password: _password);
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => buy(),
                      ),
                    );
                  },
                  child: Text('Signup')),
            ],
          )
        ],
      ),
    );
  }
}
