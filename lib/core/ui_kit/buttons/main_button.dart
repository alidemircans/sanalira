import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sanalira/helper/color_helper.dart';

enum MainButtonHeight { BOLD, SLIM }

class MainButton extends StatelessWidget {
  MainButtonHeight mainButtonHeight;
  double width;
  Widget child;
  Color color;
  double radius;
  Function() onTap;

  MainButton(
      {required this.onTap,
      required this.child,
      required this.width,
      this.radius = 10,
      this.mainButtonHeight = MainButtonHeight.BOLD,
      this.color = ColorHelper.primarySwatch,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: mainButtonHeight == MainButtonHeight.BOLD ? 54.sp : 34.sp,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(radius.sp)),
        ),
        child: Center(child: child),
      ),
    );
  }
}
