import 'package:meta/meta.dart';
import 'dart:convert';

class TopTrendingMovieData {
  static List<TrendingMovieSlider> trendingMovies = [
    TrendingMovieSlider(
        description:
            "Doctor Strange teams up with a mysterious teenage girl from his dreams who can travel across multiverses, to battle multiple threats, including other-universe versions of himself, which threaten to wipe out millions across the multiverse. They seek help from Wanda the Scarlet Witch, Wong and others.",
        homepage: "https://www.imdb.com/title/tt9419884",
        id: 0,
        imageUrl:
            "https://m.media-amazon.com/images/M/MV5BNWM0ZGJlMzMtZmYwMi00NzI3LTgzMzMtNjMzNjliNDRmZmFlXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_FMjpg_UX1000_.jpg",
        title: "Doctor Strange in the Multiverse of Madness")
  ];
}

class TrendingMovieSlider {
  TrendingMovieSlider({
    required this.description,
    required this.homepage,
    required this.id,
    required this.imageUrl,
    required this.title,
  });

  final String description;
  final String homepage;
  final int id;
  final String imageUrl;
  final String title;

  factory TrendingMovieSlider.fromMap(Map<String, dynamic> map) =>
      TrendingMovieSlider(
        description: map["description"],
        homepage: map["homepage"],
        id: map["id"],
        imageUrl: map["image_url"],
        title: map["title"],
      );

  Map<String, dynamic> toMap() => {
        "description": description,
        "homepage": homepage,
        "id": id,
        "image_url": imageUrl,
        "title": title,
      };
}
