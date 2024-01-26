import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:videoplayer_task/view/videolist_screen.dart';

import 'controller/controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
            title: 'Video Player Bloc',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home:child
        );

      },
      child: VideoListScreen(),
    );
  }
}


