

class RecommendedMoviesSlider {
  RecommendedMoviesSlider({
    required this.description,
    required this.homepage,
    required this.id,
    required this.imageUrl,
    required this.movie_name,
  });

  final String description;
  final String homepage;
  final int id;
  final String imageUrl;
  final String movie_name;

  //Decode
  factory RecommendedMoviesSlider.fromMap(Map<String, dynamic> map) =>
      RecommendedMoviesSlider(
        description: map["description"],
        homepage: map["homepage"],
        id: map["id"],
        imageUrl: map["image_url"],
        movie_name: map["movie_name"],
      );
//Encode
  Map<String, dynamic> toMap() => {
        "description": description,
        "homepage": homepage,
        "id": id,
        "image_url": imageUrl,
        "movie_name": movie_name,
      };
}
