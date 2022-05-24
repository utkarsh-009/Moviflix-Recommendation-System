import 'package:flutter/material.dart';

import 'package:netflix_app/models/recommendedSlider.dart';

class RecommendedDetailsPage extends StatelessWidget {
  final RecommendedMoviesSlider topRcmdMovies;

  const RecommendedDetailsPage({
    Key? key,
    required this.topRcmdMovies,
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
                tag: topRcmdMovies.id.toString() + '#',
                child: Image.network(topRcmdMovies.imageUrl),
              )
            ],
          ),
        ),
      ),
    );
  }
}
