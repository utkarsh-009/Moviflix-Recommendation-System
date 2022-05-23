import 'package:flutter/material.dart';
import 'package:netflix_app/models/trendingSlider.dart';

class TrendingDetailedPage extends StatelessWidget {
  final TrendingMovieSlider topTrendMovie;

  const TrendingDetailedPage({
    Key? key,
    required this.topTrendMovie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Hero(
                tag: topTrendMovie.id.toString(),
                child: Image.network(topTrendMovie.imageUrl),
              )
            ],
          ),
        ),
      ),
    );
  }
}
