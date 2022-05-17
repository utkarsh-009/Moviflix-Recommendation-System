import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/topRatedSlider.dart';

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
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        // Numbers are always unique and random
        index = list[index];

        return InkWell(
          onTap: () {},
          child: Container(
            width: 140,
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          NetworkImage(TopMovieData.topMovies[index].imageUrl),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    "${TopMovieData.topMovies[index].title}",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w100),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
