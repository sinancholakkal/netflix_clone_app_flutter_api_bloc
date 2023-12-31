import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         const SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "FEB",
                style: TextStyle(
                  color: kGreyColor,
                  fontSize: 16,
                ),
              ),
              Text(
                "11",
                style: TextStyle(
                  letterSpacing: 5,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            //height: 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoWidget(videoImage: newAndHotTembImage),
                 const Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "AQUAMAN 2",
                      style: TextStyle(
                        letterSpacing: -3,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        CustomButtonWiget(
                          icon: Icons.notifications,
                          title: "Remind me",
                          iconSize: 20,
                          textSize: 16,
                        ),
                        kwidth,
                        CustomButtonWiget(
                          icon: Icons.info,
                          title: "info",
                          textSize: 16,
                          iconSize: 20,
                        ),
                        kwidth
                      ],
                    )
                  ],
                ),
                kheight,
                 Text("Coming on Friday"),
                kheight,
                 Text(
                  "AQUAMAN 2",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kheight,
                 Text(
                  "Black Manta, still driven by the need to avenge his father's death and wielding the power of the mythic Black Trident, will stop at nothing to take Aquaman down once and for all. To defeat him, Aquaman must turn to his imprisoned brother Orm, the former King of Atlantis, to forge an unlikely alliance in order to save the world from irreversible destruction.",
                  style: TextStyle(
                    color: kGreyColor,
                  ),
                ),
                kheight
              ],
            ),
          ),
        ),
      ],
    );
  }
}

