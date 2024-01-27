import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:videoplayer_task/view/videoplayer_screen.dart';
import '../controller/controller.dart';

class VideoListScreen extends StatefulWidget {
  @override
  State<VideoListScreen> createState() => _VideoListScreenState();
}

class _VideoListScreenState extends State<VideoListScreen> {
  final VideoController videoController = Get.put(VideoController());
  @override
  void initState() {
    videoController.fetchVideos();

    print(videoController.videoList.length);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(14.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Trending Videos",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                child: Obx(() {
                  if (videoController.videoList.isEmpty) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return ListView.builder(
                      itemCount: videoController.videoList.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VideoPlayerScreen(),
                                ));
                          },
                          child: SizedBox(
                            height: 290.h,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 192.h,
                                  width: double.infinity,
                                  child: Image.network(
                                    '', //videoController.videoList[index].thumbnail.toString(),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                ListTile(
                                    minVerticalPadding: 15,
                                    contentPadding: EdgeInsets.only(),
                                    leading: Container(
                                        height: 40.sp,
                                        width: 40.sp,
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40.r),
                                        ),
                                        child: Image.asset(
                                          "assets/image/thumbnel.png",
                                          fit: BoxFit.fill,
                                        )),
                                    title: Text(
                                      videoController.videoList[index]
                                          .title, //"আরব নেতাদের যে ভুলে ফি*লি*স্তি*নের এই দুর্দাশা | আবু ত্বহা মুহাম্মদ আদনান",
                                      style: TextStyle(
                                        color: Color(0xFF1A202C),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "53,245 views  .   Feb 21, 2021",
                                      style: TextStyle(
                                          color: Color(0xFF718096),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.26,
                                          height: 1.5),
                                    ),
                                    trailing: InkWell(
                                      onTap: () {},
                                      child: Icon(Icons.more_vert,
                                          color: Color(0xFFD9D9D9)),
                                    ))
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
                }),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
