import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayer_task/view/widget/reactwidget.dart';

import '../model/videomodel.dart';

class VideoPlayerScreen extends StatelessWidget {
  // final Video video;

  const VideoPlayerScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 192.h,
              width: double.infinity,
              child: Image.asset(
                "assets/image/thumbnel.png",
                fit: BoxFit.fill,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
              title: Text(
                "আরব নেতাদের যে ভুলে ফি*লি*স্তি*নের এই দুর্দাশা | আবু ত্বহা মুহাম্মদ আদনান",
                style: TextStyle(
                  color: Color(0xFF1A202C),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                "53,245 views  .   Feb 21, 2021",
                style: TextStyle(
                    color: Color(0xFF718096),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.26,
                    height: 1.5),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ReactWidget(
                    title: "Mash Allah (12k)",
                    icon: Icon(
                      Icons.favorite_border,
                      color: Color(0XFF718096),
                    ),
                  ),
                  ReactWidget(
                    title: "Like (12k)",
                    icon: Icon(
                      Icons.thumb_up_alt_outlined,
                      color: Color(0XFF718096),
                    ),
                  ),
                  ReactWidget(
                    title: "Share",
                    icon: Icon(
                      Icons.share,
                      color: Color(0XFF718096),
                    ),
                  ),
                  ReactWidget(
                    title: "report",
                    icon: Icon(
                      Icons.flag_outlined,
                      color: Color(0XFF718096),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            ListTile(
              leading: Container(
                  height: 40.sp,
                  width: 40.sp,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: Image.asset(
                    "assets/image/thumbnel.png",
                    fit: BoxFit.fill,
                  )),
              title: Text(
                'Mega Bangla Tv',
                style: TextStyle(
                  color: Color(0xFF1A202C),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                '3M Subscribers',
                style: TextStyle(
                  color: Color(0xFF718096),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  height: 0.13,
                  letterSpacing: -0.22,
                ),
              ),
              trailing: SizedBox(
                width: 109.w,
                height: 33.h,
                child: Card(
                  color: Colors.blue,
                  child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            'Subscribe',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ),
            const Divider(
              color: Color(0xFFE2E8F0),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Comments 7.5K',
                        style: TextStyle(
                          color: Color(0xFF718096),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/image/show_more.svg",
                        height: 15.h,
                        width: 4.5.w,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.send,
                                color: Color(0xFFCBD5E0),
                              )),
                          hintText: 'Add Comment',
                          hintStyle: TextStyle(
                            color: const Color(0xFFCBD5E0),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Color(0XFFE2E8F0)),
                          )),
                    ),
                  ),
                  ListTile(
                    minVerticalPadding: -20,
                    horizontalTitleGap: 5,
                    contentPadding: EdgeInsets.symmetric(horizontal: 5),
                    leading: Container(
                        margin: EdgeInsets.only(top: 8),
                        height: 32.sp,
                        width: 32.sp,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                        child: Image.asset(
                          "assets/image/thumbnel.png",
                          fit: BoxFit.fill,
                        )),
                    title: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "Fahmida khanom    ",
                        style: TextStyle(
                          color: Color(0xFF718096),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          height: 4,
                          letterSpacing: -0.16,
                        ),
                      ),
                      TextSpan(
                        text: "2 days ago",
                        style: TextStyle(
                          color: Color(0xFF718096),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.16,
                        ),
                      )
                    ])),
                    subtitle: Text(
                      'হুজুরের বক্তব্য গুলো ইংরেজি তে অনুবাদ করে সারা পৃথিবীর মানুষদের কে শুনিয়ে দিতে হবে। কথা গুলো খুব দামি',
                      style: TextStyle(
                        color: Color(0xFF4A5568),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.24,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            const Divider(
              color: Color(0xFFE2E8F0),
            ),
          ],
        ),
      )),
    );
  }
}
