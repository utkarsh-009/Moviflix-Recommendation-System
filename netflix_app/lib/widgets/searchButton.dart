import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/Screens/homeScreen.dart';
import 'package:netflix_app/widgets/recommended.dart';

class MySearchButton extends StatefulWidget {
  const MySearchButton({Key? key}) : super(key: key);

  @override
  State<MySearchButton> createState() => _MySearchButtonState();
}

class _MySearchButtonState extends State<MySearchButton> {
  @override
  String rcmd_movie = "";
  String url = "";
  var data;

  final _controller = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        // centerTitle: true,
        title: Text(
          "Netflix",
          style: GoogleFonts.bebasNeue(fontSize: 25, color: Colors.red),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: Color(0xFF121212),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CupertinoSearchTextField(
              itemColor: Color.fromARGB(255, 188, 188, 198),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              // placeholderStyle: TextStyle(color: Colors.white),
              style: TextStyle(
                color: Color.fromARGB(255, 188, 188, 198),
              ),

              controller: _controller,
              onSubmitted: (value) async {
                rcmd_movie = value;
                url = "https://netflix-rcmd-system.herokuapp.com/api/" +
                    rcmd_movie.toString();
                // data = await jsonDecode(fetchData(url));
                print(rcmd_movie);
              },
            ),
          ],
        ),
      ),
    );
  }
}
