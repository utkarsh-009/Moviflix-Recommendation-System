import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviflix_app/Screens/topRatedDetailsPage.dart';
import 'package:moviflix_app/models/topRatedSlider.dart';

class TopRated extends StatefulWidget {
  const TopRated({Key? key}) : super(key: key);

  @override
  State<TopRated> createState() => _TopRatedState();
}

class _TopRatedState extends State<TopRated> {
  @override
  //To generate random integer
  List list = List.generate(49, (i) => i);

  void initState() {
    super.initState();
    list.shuffle();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
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
                      builder: (context) => TopRatedDetailedPage(
                          topRatedMovie: TopMovieData.topMovies[index]),
                    ),
                  );
                },
                child: Container(
                  width: 140,
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Column(
                      children: [
                        Hero(
                          tag:
                              TopMovieData.topMovies[index].id.toString() + "@",
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    TopMovieData.topMovies[index].imageUrl),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Text(
                            "${TopMovieData.topMovies[index].title}",
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
