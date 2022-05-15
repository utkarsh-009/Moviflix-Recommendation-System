import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/Model/topRatedSlider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  // called when this object is inserted into the tree.
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));

    // The rootBundle contains the resources that were packaged with the application when it was built.
    final topRatedjson =
        await rootBundle.loadString("assets/json/top50_rated.json");

    // jsonDecode parses the string and returns the resulting Json object
    final decodedData = jsonDecode(topRatedjson);
    var topMovieData = decodedData["topRatedMovies"];
    List<TopRatedSlider> list = List.from(topMovieData)
        .map<TopRatedSlider>((topMovie) => TopRatedSlider.fromMap(topMovie))
        .toList();
    setState(() {});
  }

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
              ListView(
                children: [
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
