import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sanalira/core/ui_kit/text/text_withgooglefonts_widet.dart';
import 'package:sanalira/helper/app_strings.dart';
import 'package:sanalira/helper/color_helper.dart';
import 'package:sanalira/model/bank.dart';
import 'package:sanalira/view_model/banks/bank_view_model.dart';

class BanksView extends StatelessWidget {
  const BanksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextStyleGenerator(text: "Banks"),
        backgroundColor: ColorHelper.darkColor,
      ),
      body: Consumer<BankViewModel>(
        builder: (context, value, child) {
          return value.allBank == null
              ? const SizedBox()
              : ListView.builder(
                  itemCount: value.allBank!.length,
                  itemBuilder: (context, index) {
                    return BankReviewCard(bank: value.allBank![index]);
                  },
                );
        },
      ),
    );
  }
}

class BankReviewCard extends StatelessWidget {
  Bank bank;
  BankReviewCard({required this.bank, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _onBankPressed(context, bank);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.sp),
        ),
        margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
        color: Colors.white,
        child: ListTile(
          leading: Image.network(
            "https://media.istockphoto.com/id/900791430/vector/bank-building-isolated-on-white-background-vector-illustration-flat-style.jpg?s=612x612&w=0&k=20&c=jc8wpyoZZ3I1qnz8xEfKf-P-dry-SqJyeaZkIEWOl34=",
            height: 100.h,
          ),
          title: TextStyleGenerator(
            text: bank.bankName,
          ),
          subtitle: TextStyleGenerator(
            text: AppStrings.eftText,
            color: ColorHelper.greyTextColor,
          ),
        ),
      ),
    );
  }

  _onBankPressed(context, Bank bank) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 300.h,
          padding: EdgeInsets.all(10.sp),
          color: ColorHelper.whiteColor,
          child: Column(
            children: [
              BankDetailRow(
                  content: bank.bankAccountName, title: AppStrings.accountName),
              16.h.verticalSpace,
              BankDetailRow(content: bank.bankIban, title: AppStrings.IBAN),
              16.h.verticalSpace,
              BankDetailRow(
                  content: bank.descriptionNo, title: AppStrings.description)
            ],
          ),
        );
      },
    );
  }
}

class BankDetailRow extends StatelessWidget {
  String title;
  String content;
  BankDetailRow({required this.content, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextStyleGenerator(
          text: title,
          fontSize: 12.sp,
          color: ColorHelper.greyTextColor,
        ),
        5.h.verticalSpace,
        Container(
          decoration: BoxDecoration(
            color: ColorHelper.greyBackColor,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10.sp,
              ),
            ),
          ),
          width: 1.sw,
          height: 50.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextStyleGenerator(
                text: content,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
              const Icon(
                Icons.copy,
                color: ColorHelper.primarySwatch,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
