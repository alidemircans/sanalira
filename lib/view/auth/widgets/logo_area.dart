import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sanalira/core/extension/context_extension.dart';
import 'package:sanalira/core/ui_kit/text/text_withgooglefonts_widet.dart';
import 'package:sanalira/helper/app_images_path.dart';
import 'package:sanalira/helper/app_strings.dart';
import 'package:sanalira/helper/color_helper.dart';

class LogoArea extends StatelessWidget {
  const LogoArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getDynmaicWidth(1),
      height: 60.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 60.w,
            height: 60.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  12.sp,
                ),
              ),
              image: const DecorationImage(
                image: NetworkImage(
                  AppImagesPath.appLogo,
                ),
              ),
            ),
          ),
          8.w.horizontalSpace,
          TextStyleGenerator(
            text: AppStrings.appName,
            fontSize: 21.sp,
            color: ColorHelper.whiteColor,
            fontWeight: FontWeight.w700,
          )
        ],
      ),
    );
  }
}
