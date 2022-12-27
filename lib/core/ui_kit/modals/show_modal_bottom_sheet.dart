import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sanalira/helper/color_helper.dart';

class ShowModalBottomSheetWidget extends StatelessWidget {
  const ShowModalBottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorHelper.darkColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          // SvgPicture.asset(AssetIamgePath.menuBottomRightImage),
          Column(
            children: [
              16.h.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Transform.rotate(
                      angle: -math.pi / 2,
                      child: const Opacity(
                        opacity: .4,
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 500.h,
                margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const ListTile();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget getSocialButtons(String path) => SvgPicture.asset(path);
}
