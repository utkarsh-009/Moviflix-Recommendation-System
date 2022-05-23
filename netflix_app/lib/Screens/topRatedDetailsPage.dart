import 'package:flutter/material.dart';

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
        backgroundColor: Color(0xFF121212),
        body: Column(
          children: [Image.network(topRatedMovie.imageUrl)],
        ));
  }
}
