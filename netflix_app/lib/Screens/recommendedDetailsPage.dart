import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
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
                  tag: topRcmdMovies.id.toString() + '#',
                  child: Center(
                    child: Image.network(
                      topRcmdMovies.imageUrl,
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
