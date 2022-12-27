import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:sanalira/core/ui_kit/text/text_withgooglefonts_widet.dart';
import 'package:sanalira/helper/color_helper.dart';

class TextFormFieldWidget extends StatelessWidget {
  Iterable<String>? autofillHints;
  TextEditingController? controller;
  FocusNode? focusNode;
  bool obscureText;
  Widget? suffixIcon;
  String? title;
  TextInputType? textInputType;
  String? hintText;
  Color backColor;
  TextInputFormatter? maskTextInputFormatter;
  String? Function(String? val)? validator;

  void Function()? onEditingComplete;

  TextFormFieldWidget({
    this.title,
    this.obscureText = false,
    this.autofillHints,
    this.controller,
    this.focusNode,
    this.suffixIcon = const SizedBox(),
    this.textInputType,
    this.hintText,
    this.backColor = ColorHelper.greyTextColor,
    this.onEditingComplete,
    this.maskTextInputFormatter,
    this.validator,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...[
          TextStyleGenerator(
            text: title,
            fontSize: 12.sp,
            color: ColorHelper.greyTextColor,
          ),
          4.h.verticalSpace,
        ],
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                10.sp,
              ),
            ),
            border: Border.all(
              color: ColorHelper.greyTextColor,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            validator: validator,
            inputFormatters: [
              maskTextInputFormatter ?? MaskTextInputFormatter(),
            ],
            onEditingComplete: onEditingComplete,
            keyboardType: textInputType,
            obscureText: obscureText,
            controller: controller,
            focusNode: focusNode,
            style: const TextStyle(
              color: ColorHelper.whiteColor,
              fontWeight: FontWeight.w700,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: suffixIcon,
              hintText: hintText,
              hintStyle: TextStyle(
                color: ColorHelper.darkColor,
                fontSize: 12.sp,
              ),
            ),
            textAlign: TextAlign.left,
            autofillHints: autofillHints,
          ),
        ),
      ],
    );
  }
}
