import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/widgets/topRated.dart';

import '../models/topRatedSlider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  // //To generate random integer
  // List list = List.generate(49, (i) => i);

  // called when this object is inserted into the tree.
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 0));

    // The rootBundle contains the resources that were packaged with the application when it was built.
    final topRatedjson =
        await rootBundle.loadString("assets/json/top50_rated.json");

    // jsonDecode decodes the string and returns the resulting Json object
    final decodedData = jsonDecode(topRatedjson);
    var topMovieData = decodedData["topRatedMovies"];
    TopMovieData.topMovies = List.from(topMovieData)
        .map<TopRatedSlider>((topMovies) => TopRatedSlider.fromMap(topMovies))
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
      body: Container(
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
              Expanded(
                child: TopRated(),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
