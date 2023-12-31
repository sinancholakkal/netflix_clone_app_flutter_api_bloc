import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [
    const _smartDownload(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: "Downloads",
        ),
      ),
      body: ListView.separated(
        padding:const EdgeInsets.all(18),
        itemBuilder: (ctx,index)=>_widgetList[index],
        separatorBuilder: (ctx,index)=>const SizedBox(height: 20,),
        itemCount: _widgetList.length,
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWnEkdg7LI4SJmpBwr7bpV4TWq8T9ilJFiLA&usqp=CAU",
    "https://img.heymovies.to/i/cache/images/5/51/51e817bb934733a2f5f6afa98468b720.jpg",
    "https://img.heymovies.to/i/cache/images/5/52/52b7547234bf94a9dce2bd6269805285.jpg",
    "https://www.themoviedb.org/t/p/w440_and_h660_face/upmXGc1QovmPBU0mQJR2re6ruKd.jpg"
  ];


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Indrodusing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kWhiteColor, fontSize: 27, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          "We will download a personalised selection of\nmovies and shows for you, so there's\nalways something to watch on your\ndevice.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        kheight,
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(.5),
                  radius: size.width * 0.4,
                ),
              ),
              DownloadsImageWidgets(
                image: imageList[0],
                margin:const EdgeInsets.only(left: 180,top: 50),
                angle: 25,
                size: Size(size.width * 0.35, size.width * 0.55),
                radius: 20,
              ),
              DownloadsImageWidgets(
                  image: imageList[1],
                  margin:const EdgeInsets.only(
                    right: 180,top: 50
                  ),
                  radius: 20,
                  angle: -25,
                  size: Size(size.width * 0.35, size.width * 0.55)),
              DownloadsImageWidgets(
                  image: imageList[3],
                  margin:const EdgeInsets.only(bottom: 35,top: 50),
                  radius: 20,
                  size: Size(size.width * 0.4, size.width * 0.6)),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kButtonColorBlue,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Set up",
                style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          color: kButtonColorWhite,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "See what you can download",
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class _smartDownload extends StatelessWidget {
  const _smartDownload({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kwidth,
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        kwidth,
        Text("Smart Downloads")
      ],
    );
  }
}

class DownloadsImageWidgets extends StatelessWidget {
  const DownloadsImageWidgets({
    super.key,
    required this.image,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
  });
  final double angle;
  final String image;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            //margin: margin,
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(image,),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
