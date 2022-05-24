import 'package:flutter/material.dart';
import 'package:netflix_app/models/trendingSlider.dart';
import 'package:velocity_x/velocity_x.dart';

class TrendingDetailedPage extends StatelessWidget {
  final TrendingMovieSlider topTrendMovie;

  const TrendingDetailedPage({
    Key? key,
    required this.topTrendMovie,
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
                  tag: topTrendMovie.id.toString() + '!',
                  child: Center(
                    child: Image.network(
                      topTrendMovie.imageUrl,
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
