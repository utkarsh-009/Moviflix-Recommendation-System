import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';

class TrendingSlider extends StatefulWidget {
  const TrendingSlider({Key? key}) : super(key: key);

  @override
  State<TrendingSlider> createState() => _TrendingSliderState();
}

class _TrendingSliderState extends State<TrendingSlider> {
  @override
  List trendingMovies = [];
  final String apikey = '1e6e84b2ee975bb004b164382715cf78';
  final readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxZTZlODRiMmVlOTc1YmIwMDRiMTY0MzgyNzE1Y2Y3OCIsInN1YiI6IjYyOGE0ODY0MjQ5NWFiNTI3ZGQxMDM3YSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.h7nA0i6DrGUcT96vmODGtk_Qh2r4u15kvsXqmhh_kPI';

  void initState() {
    loadMovies();
    super.initState();
  }

  loadMovies() async {
    TMDB tmdbWithCustomLogs = TMDB(
      ApiKeys(apikey, readaccesstoken),
      logConfig: ConfigLogger(showLogs: true, showErrorLogs: true),
    );

    //Map
    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
    print(trendingresult);

    setState(() {
      //List
      trendingMovies = trendingresult['results'];
    });
  }

  Widget build(BuildContext context) {
    return Container();
  }
}
