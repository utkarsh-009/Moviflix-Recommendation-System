import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        centerTitle: true,
        title: Text(
          "Netflix",
          style: GoogleFonts.bebasNeue(fontSize: 25, color: Colors.red),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          child: Column(
            children: [
              Text(
                "Top Rated Movies",
                style: GoogleFonts.bebasNeue(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w100),
              ),
              SizedBox(
                height: 15,
              ),
              CarouselSlider(
                options: CarouselOptions(),
                items: [],
              )
            ],
          ),
        ),
      ),
    );
  }
}
