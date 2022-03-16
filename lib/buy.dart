// import 'dart:ui';

import 'package:flutter/material.dart';

class buy extends StatefulWidget {
  @override
  State<buy> createState() => _buyState();
}

class _buyState extends State<buy> {
  int selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BUY"),
      ),
      body: Column(
        children: [
          const Text(
            "Books You May Need",
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),

          //scroll view

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(5.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 25,
                  height: 15,
                ),
                Image.asset(
                  'images/book2.jpg',
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  height: 175,
                  width: 130,
                ),
                const SizedBox(
                  width: 25,
                  height: 15,
                ),
                Image.asset(
                  'images/book3.jpg',
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  height: 175,
                  width: 130,
                ),
                const SizedBox(
                  width: 25,
                  height: 15,
                ),
                Image.asset(
                  'images/book4.jpg',
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  height: 175,
                  width: 130,
                )
              ],
            ),
          ),

          const SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Image.asset(
                  'images/book1.jpg',
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  height: 175,
                  width: 130,
                ),
                const SizedBox(
                  width: 25,
                  height: 15,
                ),
                Image.asset(
                  'images/book2.jpg',
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  height: 175,
                  width: 130,
                ),
                const SizedBox(
                  width: 25,
                  height: 15,
                ),
                Image.asset(
                  'images/book3.jpg',
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  height: 175,
                  width: 130,
                ),
                const SizedBox(
                  width: 25,
                  height: 15,
                ),
                Image.asset(
                  'images/book4.jpg',
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  height: 175,
                  width: 130,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          DropdownButton(
              alignment: Alignment.centerLeft,
              focusColor: Colors.black26,
              dropdownColor: Colors.white10,
              elevation: 10,
              // hint: Text("Select Sem"),
              value: selectedValue,
              items: const [
                DropdownMenuItem(
                  child: Text(
                    "Select Sem",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        backgroundColor: Colors.black38),
                  ),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("1st"),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text("2nd"),
                  value: 3,
                ),
                DropdownMenuItem(
                  child: Text("3rd"),
                  value: 4,
                ),
                DropdownMenuItem(
                  child: Text("4th"),
                  value: 4,
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedValue = value as int;
                });
              }),
        ],
      ),
    );
  }
}
