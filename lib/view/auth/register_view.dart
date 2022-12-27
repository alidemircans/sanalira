import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:sanalira/core/extension/context_extension.dart';
import 'package:sanalira/core/ui_kit/buttons/main_button.dart';
import 'package:sanalira/core/ui_kit/form_elements/text_form_field.dart';
import 'package:sanalira/core/ui_kit/text/text_withgooglefonts_widet.dart';
import 'package:sanalira/helper/app_images_path.dart';
import 'package:sanalira/helper/app_strings.dart';
import 'package:sanalira/helper/color_helper.dart';
import 'package:sanalira/helper/reach_text_core.dart';
import 'package:sanalira/helper/validator.dart';
import 'package:sanalira/view/auth/widgets/logo_area.dart';
import 'package:sanalira/view_model/auth/register_view_model.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: context.getDynmaicWidth(1),
          height: context.getDynmaicHeight(1),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage(AppImagesPath.registerBackgroundImage),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                ColorHelper.registerPageBackImageFilterColor.withOpacity(.7),
                BlendMode.darken,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Spacer(),
              LogoArea(),
              Spacer(),
              _FormArea(),
            ],
          ),
        ),
      ),
    );
  }
}

class _FormArea extends StatelessWidget {
  const _FormArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getDynmaicWidth(1),
      height: 600.h,
      padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 15.w),
      decoration: BoxDecoration(
        color: ColorHelper.accentColor.withOpacity(.7),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40.sp),
          topLeft: Radius.circular(40.sp),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TextStyleGenerator(
                  text: AppStrings.sanaLiraYa,
                  fontSize: 16.sp,
                  color: ColorHelper.primarySwatch,
                  fontWeight: FontWeight.w700,
                ),
                4.w.horizontalSpace,
                TextStyleGenerator(
                  text: AppStrings.newMembership,
                  fontSize: 16.sp,
                  color: ColorHelper.whiteColor,
                ),
              ],
            ),
            6.h.verticalSpace,
            TextStyleGenerator(
              text: AppStrings.enteYourInformation,
              fontSize: 12.sp,
              color: ColorHelper.greyTextColor,
            ),
            16.h.verticalSpace,
            const _RegisterForm()
          ],
        ),
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  const _RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegisterViewModel>(
      builder: (context, viewModel, _) => Form(
        key: viewModel.formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormFieldWidget(
                title: AppStrings.name,
                controller: viewModel.nameTextEditingController,
                focusNode: viewModel.nameFocusNode,
                validator: Validator.validateNameAndSurname,
              ),
              8.h.verticalSpace,
              TextFormFieldWidget(
                title: AppStrings.surname,
                controller: viewModel.surNameTextEditingController,
                focusNode: viewModel.surNameFocusNode,
                validator: Validator.validateNameAndSurname,
              ),
              8.h.verticalSpace,
              TextFormFieldWidget(
                title: AppStrings.eMail,
                controller: viewModel.eEmailTextEditingController,
                focusNode: viewModel.eMailFocusNode,
                autofillHints: const [AutofillHints.email],
                validator: Validator.validateEmail,
              ),
              8.h.verticalSpace,
              TextStyleGenerator(
                text: AppStrings.phoneNumber,
                fontSize: 12.sp,
                color: ColorHelper.greyTextColor,
              ),
              4.h.verticalSpace,
              Row(
                children: [
                  Container(
                    width: 83.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.sp),
                      ),
                      border: Border.all(color: ColorHelper.greyTextColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 22.w,
                          height: 22.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                AppImagesPath.trFlag,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        6.w.horizontalSpace,
                        TextStyleGenerator(
                          text: AppStrings.trCode,
                          color: ColorHelper.whiteColor,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                        )
                      ],
                    ),
                  ),
                  8.w.horizontalSpace,
                  SizedBox(
                    width: context.getDynmaicWidth(.7),
                    child: TextFormFieldWidget(
                      controller: viewModel.phoneTextEditingController,
                      focusNode: viewModel.phoneFocusNode,
                      maskTextInputFormatter: MaskTextInputFormatter(
                        mask: '### ## ##',
                        filter: {"#": RegExp(r'[0-9]')},
                      ),
                      autofillHints: const [AutofillHints.telephoneNumber],
                    ),
                  ),
                ],
              ),
              16.h.verticalSpace,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check_box,
                    color: ColorHelper.primarySwatch,
                    size: 29.sp,
                  ),
                  8.w.horizontalSpace,
                  SizedBox(
                    width: .7.sw,
                    height: 59,
                    child: CompanyRichText(
                      CompanyRichTextModel(
                        textAlign: TextAlign.start,
                        text: AppStrings.accountRules,
                        highlightedTextModels: [
                          HighlightedTextModel(
                              AppStrings.accountRulesHighlighted),
                        ],
                        normalTextStyle: GoogleFonts.poppins(
                          color: ColorHelper.whiteColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        accentTextStyle: GoogleFonts.poppins(
                          color: ColorHelper.primarySwatch,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              MainButton(
                onTap: viewModel.onRegisterPressed(context),
                child: TextStyleGenerator(
                  text: AppStrings.register,
                  color: ColorHelper.whiteColor,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                ),
                width: 1.sw,
              )
            ],
          ),
        ),
      ),
    );
  }
}
