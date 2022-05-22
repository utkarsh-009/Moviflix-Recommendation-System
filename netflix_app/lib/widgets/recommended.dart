import 'dart:convert';

import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:netflix_app/models/recommendedSlider.dart';
import 'package:netflix_app/widgets/searchButton.dart';

class Recommended extends StatefulWidget {
  const Recommended({Key? key}) : super(key: key);

  @override
  State<Recommended> createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  String url = "";

  // fetchData(String url) async {
  void initState() {
    super.initState();
    getRcmdMovies("initial");
  }

  Future<List<RecommendedMoviesSlider>> getRcmdMovies(String value) async {
    url = "https://netflix-rcmd-system.herokuapp.com/api/" + value.toString();

    var data = await http.get(Uri.parse(url));
    List<RecommendedMoviesSlider> rcmdMovies = [];

    var jsonData = json.decode(data.body);

    for (var u in jsonData) {
      RecommendedMoviesSlider rcmd_movies = RecommendedMoviesSlider(
          u["description"],
          u["homepage"],
          u["id"],
          u["image_url"],
          u["movie_name"]);

      rcmdMovies.add(rcmd_movies);
    }

    return rcmdMovies;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getRcmdMovies(rcmd_movie),
      builder: ((BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return Center(child: CircularProgressIndicator());
        } else {
          return Expanded(
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    width: 210,
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                snapshot.data[index].imageUrl,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Text(
                            "${snapshot.data[index].movie_name}",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }
      }),
    );
  }
}
