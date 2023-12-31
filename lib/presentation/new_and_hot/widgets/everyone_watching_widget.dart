import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class EveryoneWachingWidget extends StatelessWidget {
  const EveryoneWachingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const Text(
          "This might contain spoilers!",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        const SizedBox(
          height: 100,
          width: double.infinity,
          child: Expanded(
            child: SingleChildScrollView(
              child: Text(
                "Interstellar is my favorite movie. I'm really into space and everything about it, so this movie was my cup of tea. The soundtrack is the best of the movie. It points out flow of time, which is the most discussed issue in the movie. Special effects are breathtaking. Even with some small mistakes, it is pretty accurate and expectable. There is some visually pleasing cinematography too, including Saturn, the curvature of spacetime or majestic black hole, which is really satisfying. Some scenes are loud and thrilling, but some moments are so quiet, that you actually think, you are in space! The movie is long but gripping. The plot, although it's complicated, is told easily and understandably. But the end of the movie is difficult to understand, since it contains time loop and time travel at the same time, but if you listen carefully, you will get it. I watched the movie 7 times and I still enjoy it!",
                style: TextStyle(
                  color: kGreyColor,
                ),
              ),
            ),
          ),
        ),
        kheight,
        VideoWidget(videoImage: "https://i.ytimg.com/vi/XHqRu5aY-wg/maxresdefault.jpg"),
        kheight,
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonWiget(
              icon: Icons.share,
              title: "Share",
              iconSize: 25,
              textSize: 16,
            ),
            kwidth,
            CustomButtonWiget(
              icon: Icons.add,
              title: "My List",
              iconSize: 25,
              textSize: 16,
            ),
            kwidth,
            CustomButtonWiget(
              icon: Icons.play_arrow,
              title: "Play",
              iconSize: 25,
              textSize: 16,
            ),
            kwidth
          ],
        )
      ],
    );
  }
}
