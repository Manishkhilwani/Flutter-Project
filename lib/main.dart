// import 'package:bookit/newbutton.dart';
// import 'package:bookit/sell.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:office/buy.dart';
import 'package:office/ghar.dart';
import 'package:office/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(bookit());
}

class bookit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Book It", theme: ThemeData(primarySwatch: Colors.indigo));
    // home: LoginScreen());
  }
}

class book extends StatelessWidget {
  //  const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: const Text(
          'BookIt',
        ),
        backgroundColor: Colors.red,
      ),
      body:
          // Padding(padding: EdgeInsets.only(top: 15.0),),
          Container(
        padding: const EdgeInsets.only(top: 50),
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("images/book.jpg"))),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.cyan,
                      textStyle: const TextStyle(
                          fontSize: 20, fontFamily: "Franklin Gothic Medium"),
                      onPrimary: Colors.black87,
                      shadowColor: Colors.limeAccent,
                      elevation: 20,
                      minimumSize: const Size(100, 50),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.white30,
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => buy(),
                      ),
                    );
                  },
                  child: const Text(
                    'Buy A Book',
                  )),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.cyan,
                      textStyle: const TextStyle(
                          fontSize: 20, fontFamily: "Franklin Gothic Medium"),
                      onPrimary: Colors.black87,
                      shadowColor: Colors.limeAccent,
                      elevation: 20,
                      minimumSize: const Size(100, 50),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.white30,
                      )),

                  // style: ButtonStyle(
                  //     backgroundColor:
                  //         MaterialStateProperty.all(Colors.amber)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => sell(),
                      ),
                    );
                  },
                  child: const Text('Sell A Book')),
            ],
          )
        ]),
      ),
    );
  }
}
