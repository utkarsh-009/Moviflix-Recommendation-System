import 'package:flutter/material.dart';

class DetailedPage extends StatelessWidget {
  const DetailedPage({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.homepage,
  }) : super(key: key);

  final String name, description, homepage, imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF121212),
        body: Column(
          children: [
            // Image.network()
          ],
        ));
  }
}
