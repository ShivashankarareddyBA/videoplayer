import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart' as colors;

class VideoInfo extends StatefulWidget {
  const VideoInfo({super.key});

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List videoinfo = [];
  _initData() {
    DefaultAssetBundle.of(context)
        .loadString("json/videoinfo.json")
        .then((value) {
      videoinfo = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colors.AppColors.gradientFirst.withOpacity(0.9),
              colors.AppColors.gradientSecond,
            ],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: colors.AppColors.secondPageIconColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      Icon(
                        Icons.info_outline,
                        size: 20,
                        color: colors.AppColors.secondPageIconColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Legs Toning",
                    style: TextStyle(
                      fontSize: 20,
                      color: colors.AppColors.secondPageTitleColor,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "And Glutes Workout",
                    style: TextStyle(
                      fontSize: 20,
                      color: colors.AppColors.secondPageTitleColor,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              colors.AppColors.secondPageGreadient1stColor,
                              colors.AppColors.secondPageGreadient2ndColor,
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.timer,
                                color: colors.AppColors.secondPageIconColor,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "60 min",
                                style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        colors.AppColors.secondPageIconColor),
                              ),
                            ]),
                      ),
                      Expanded(child: Container()),
                      Container(
                        width: 240,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              colors.AppColors.secondPageGreadient1stColor,
                              colors.AppColors.secondPageGreadient2ndColor,
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.handyman_outlined,
                                color: colors.AppColors.secondPageIconColor,
                              ),
                              Text(
                                "Resistant band, Kettebell",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: colors.AppColors.secondPageIconColor,
                                ),
                              )
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Circuit 1: Legs Toning",
                          style: TextStyle(
                            color: colors.AppColors.circuitsColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(child: Container()),
                        Row(
                          children: [
                            Icon(
                              Icons.loop,
                              color: colors.AppColors.loopColor,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "3 sets",
                              style: TextStyle(
                                fontSize: 16,
                                color: colors.AppColors.setsColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: videoinfo.length,
                          itemBuilder: (_, int index) {
                            return GestureDetector();
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
