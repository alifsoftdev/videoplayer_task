import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReactWidget extends StatelessWidget {
  final String title;
  final Icon icon;
  const ReactWidget({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFE2E8F0),width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        icon,
        SizedBox(height: 5.h,),
        Text(title,
          style: TextStyle(
            color: Color(0xFF718096),
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),),
      ],),
    );
  }
}
