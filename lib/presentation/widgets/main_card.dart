import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

class MainCardHome extends StatelessWidget {
  const MainCardHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 10),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kradius10,
        image:const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://img.heymovies.to/i/cache/images/0/04/04f7d5c5954f7c9c2e1313e0b34e4306.jpg",
          ),
        ),
      ),
    );
  }
}
