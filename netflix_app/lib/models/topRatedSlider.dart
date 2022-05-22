import 'dart:convert';

class TopMovieData {
  static List<TopRatedSlider> topMovies = [
    TopRatedSlider(
        description:
            "The Shawshank Redemption: Directed by Frank Darabont. With Tim Robbins, Morgan Freeman, Bob Gunton, William Sadler. Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
        homepage: "https://www.imdb.com/title/tt0111161",
        id: 0,
        imageUrl:
            "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_FMjpg_UX1000_.jpg",
        title: "The Shawshank Redemption")
  ];
}

class TopRatedSlider {
  TopRatedSlider({
    required this.description,
    required this.homepage,
    required this.id,
    required this.imageUrl,
    required this.title,
  });

  String description;
  String homepage;
  int id;
  String imageUrl;
  String title;
//Decode
  factory TopRatedSlider.fromMap(Map<String, dynamic> map) => TopRatedSlider(
        description: map["description"],
        homepage: map["homepage"],
        id: map["id"],
        imageUrl: map["image_url"],
        title: map["title"],
      );
//Encode
  Map<String, dynamic> toMap() => {
        "description": description,
        "homepage": homepage,
        "id": id,
        "image_url": imageUrl,
        "title": title,
      };
}
