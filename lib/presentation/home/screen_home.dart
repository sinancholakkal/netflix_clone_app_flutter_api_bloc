import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/background_card.dart';
//import 'package:netflix_clone/core/constants.dart';
//import 'package:netflix_clone/presentation/home/widgets/custom_button_widget.dart';
//import 'package:netflix_clone/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_clone/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: ((notification) {
                  final ScrollDirection direction = notification.direction;
                  print(direction);
                  if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollNotifier.value = true;
                  }
                  return true;
                }),
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        BackgroundCard(),
                        Column(
                          children: [],
                        ),
                        MainTitleCard(
                          title: "Release in the Past year",
                        ),
                        kheight,
                        MainTitleCard(
                          title: "Trending Now",
                        ),
                        kheight,
                        NumberTitleCard(),
                        MainTitleCard(
                          title: "Tense Dramas",
                        ),
                        kheight,
                        MainTitleCard(
                          title: "South Indian Cinema",
                        ),
                        kheight
                      ],
                    ),
                    scrollNotifier.value == true
                        ? AnimatedContainer(
                          duration: Duration(milliseconds: 1000),
                            width: double.infinity,
                            height: 80,
                            color: Colors.black.withOpacity(0.3),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.network(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFzd3xj0s7Mjan4wtNwH_HaKoyzHN2FiQ8eg&usqp=CAU",
                                      width: 60,
                                      height: 60,
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      Icons.cast,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    kwidth,
                                    Container(
                                      height: 30,
                                      width: 30,
                                      color: Colors.blue,
                                    ),
                                    kwidth,
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Tv Shows",style: kHomeTitleText,),
                                    Text("Movies",style: kHomeTitleText,),
                                    Text("Categories",style: kHomeTitleText,),
                                  ],
                                )
                              ],
                            ),
                          )
                        : kheight
                  ],
                ),
              );
            }));
  }
}
