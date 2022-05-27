import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget MyDrawerList() {
  return Container(
      height: 500,
      color: Color(0xFF121212),
      child: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.trending_up_rounded,
              size: 30,
              color: Colors.white,
            ),
            title: Text(
              "Trending Movies",
              style: GoogleFonts.bebasNeue(
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.w100),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.star_border,
              size: 30,
              color: Colors.white,
            ),
            title: Text(
              "Top Rated Movies",
              style: GoogleFonts.bebasNeue(
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.w100),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.recommend,
              size: 30,
              color: Colors.white,
            ),
            title: Text(
              "Recommended Movies",
              style: GoogleFonts.bebasNeue(
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.w100),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: GoogleFonts.bebasNeue(
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.w100),
            ),
            onTap: () {},
          ),
        ],
      ));
}
