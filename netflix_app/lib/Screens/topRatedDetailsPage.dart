import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:netflix_app/models/topRatedSlider.dart';
import 'package:netflix_app/models/trendingSlider.dart';

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
              Container(
                height: 200,
                child: Column(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
