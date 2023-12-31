import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 600,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          KmainImage,
                        ),
                      ),
                    ),
                  ),
                   Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomButtonWiget(icon: Icons.add, title: "My List"),
                          _PlayButton(),
                          CustomButtonWiget(icon: Icons.info, title: "Info")
                        ],
                      ),
                    ),
                  )
                ],
              );
  }
    TextButton _PlayButton() {
    return TextButton.icon(
    onPressed: () {},
    style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(kWhiteColor)),
    icon: const Icon(
      Icons.play_arrow,
      size: 25,
      color: kBlackColor,
    ),
    label: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "Play",
        style: TextStyle(fontSize: 20, color: kBlackColor),
      ),
    ),
  );
  }

}