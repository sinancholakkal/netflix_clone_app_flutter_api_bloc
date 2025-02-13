import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              prefixIcon:const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              backgroundColor: Colors.grey.withOpacity(0.4),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              style:const TextStyle(color: Colors.white),
            ),
            kheight,
            //const Expanded(child: SearchIdleWidget()),
            const Expanded(child: SearchResultWidget()),
          ],
        ),
      )),
    );
  }
}
