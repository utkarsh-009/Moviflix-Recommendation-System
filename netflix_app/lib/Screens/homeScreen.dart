import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/widgets/searchButton.dart';
import 'package:netflix_app/widgets/topRated.dart';

import '../models/topRatedSlider.dart';

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
        // centerTitle: true,
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
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MySearchButton()));
              MySearchButton();
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Top Rated Movies",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 300,
                  child: TopRated(),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Trending Movies",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 300,
                  child: TopRated(),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Recommended Movies",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
