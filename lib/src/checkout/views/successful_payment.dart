/*
import 'package:fashion/common/utils/enums.dart';
import 'package:fashion/common/utils/kcolors.dart';
import 'package:fashion/common/utils/packages_exports.dart';
import 'package:fashion/common/utils/providers_exports.dart';
import 'package:fashion/common/widgets/app_style.dart';
import 'package:fashion/common/widgets/reusable_text.dart';
import 'package:fashion/const/constants.dart';
import 'package:fashion/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/utils/kcolors.dart';
import '../../../common/widgets/app_style.dart';
import '../../../common/widgets/reusable_text.dart';

class SuccessfulPayment extends StatelessWidget {
  const SuccessfulPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: ReusableText(
            text: "Payment",
            style: appStyle(16, Kolors.kPrimary, FontWeight.w600)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              R.ASSETS_IMAGES_CHECKOUT_PNG,
              width: 250.w,
              height: 250.h,
            ),
          ),
          Center(
              child: ReusableText(
            text: 'Payment Successful!',
            style: appStyle(20, Kolors.kPrimary, FontWeight.w600),
          )),
          SizedBox(
            height: 10.h,
          ),
          Center(
              child: ReusableText(
            text: 'Thank you for your purchase',
            style: appStyle(14, Kolors.kGray, FontWeight.normal),
          ))
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          context.read<CartNotifier>().setPaymentUrl('');
          context
              .read<NotificationNotifier>()
              .setReloadCount(NotificationCount.update);
          context.go('/home');
        },
        child: Container(
          height: 80,
          width: ScreenUtil().screenWidth,
          decoration:
              BoxDecoration(color: Kolors.kPrimary, borderRadius: kRadiusTop),
          child: Center(
            child: ReusableText(
                text: "Continue to Home",
                style: appStyle(16, Kolors.kWhite, FontWeight.w600)),
          ),
        ),
      ),
    );
  }
}
*/
