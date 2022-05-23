import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/Screens/trendingDetailedPage.dart';
import 'package:netflix_app/models/trendingSlider.dart';

class Trending extends StatefulWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  //To generate random integer
  List list = List.generate(20, (i) => i);

  void initState() {
    super.initState();
    list.shuffle();
  }

  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          // Numbers are always unique and random
          index = list[index];

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TrendingDetailedPage(
                      topTrendMovie:
                          TopTrendingMovieData.trendingMovies[index]),
                ),
              );
            },
            child: Container(
              width: 140,
              height: 250,
              child: Column(
                children: [
                  Hero(
                    tag: TopTrendingMovieData.trendingMovies[index].id
                        .toString(),
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(TopTrendingMovieData
                              .trendingMovies[index].imageUrl),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      "${TopTrendingMovieData.trendingMovies[index].title}",
                      style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
