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
      body: Column(
        children: [Image.network(topRcmdMovies.imageUrl)],
      ),
    );
  }
}
