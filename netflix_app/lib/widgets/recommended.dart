import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Recommended extends StatelessWidget {
  const Recommended({Key? key}) : super(key: key);

  // String url = '';

  fetchData(String url) async {
    http.Response response = await http.get(Uri.parse(url));
    return response.body;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          // Numbers are always unique and random
          // index = list[index];

          return InkWell(
            onTap: () {},
            child: Container(
              width: 140,
              height: 250,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(
                    //     image: NetworkImage(
                    //         TopMovieData.topMovies[index].imageUrl,
                    //         ),
                    //   ),
                    // ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // Container(
                  //   child: Text(
                  //       "${TopMovieData.topMovies[index].title}",
                  //       style: GoogleFonts.poppins(
                  //           fontSize: 13,
                  //           color: Colors.white,
                  //           fontWeight: FontWeight.w500),
                  //       ),
                  // )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
