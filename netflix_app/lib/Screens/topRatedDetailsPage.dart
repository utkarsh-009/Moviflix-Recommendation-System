import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:netflix_app/models/topRatedSlider.dart';

class TopRatedDetailedPage extends StatelessWidget {
  final TopRatedSlider topRatedMovie;

  const TopRatedDetailedPage({
    Key? key,
    required this.topRatedMovie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        title: Text(
          "${topRatedMovie.title}",
          style: GoogleFonts.poppins(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Hero(
                  tag: topRatedMovie.id.toString() + "@",
                  child: Center(
                    child: Image.network(
                      topRatedMovie.imageUrl,
                    ).h60(context),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${topRatedMovie.title}",
                      style: GoogleFonts.poppins(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "${topRatedMovie.description}",
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
