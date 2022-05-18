import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySearchButton extends StatefulWidget {
  const MySearchButton({Key? key}) : super(key: key);

  @override
  State<MySearchButton> createState() => _MySearchButtonState();
}

class _MySearchButtonState extends State<MySearchButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        title: Text("Search Your Favourite Movie!"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: CupertinoSearchTextField(
            //  controller: _controller,
            placeholder: "Search Movie",
            placeholderStyle: GoogleFonts.poppins(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
            borderRadius: BorderRadius.circular(10),
            itemSize: 30,

            // onChanged: (value) {
            //   //TODO
            // },
          ),
        ),
      ),
    );
  }
}
