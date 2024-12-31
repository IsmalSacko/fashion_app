import 'package:fashio_app/common/services/storage.dart';
import 'package:fashio_app/common/utils/kcolors.dart';
import 'package:fashio_app/common/utils/kstrings.dart';
import 'package:fashio_app/common/widgets/app_style.dart';
import 'package:fashio_app/common/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../const/resource.dart';

/*
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Kolors.kWhite,
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        child: Column (
          children: [
            SizedBox(height: 20.h),
            Image.asset(R.ASSETS_IMAGES_GETSTARTED_PNG
            ),
            Text(
                AppText.kWelcomeHeader,
                textAlign: TextAlign.center,
                style: appStyle(22, Kolors.kPrimary, FontWeight.bold),
            ),
            SizedBox(
              child: Text(
                AppText.kWelcomeMessage,
                textAlign: TextAlign.center,
                style: appStyle(12, Kolors.kGray, FontWeight.normal),
              ),
            ),
            SizedBox(height: 10.h),
            GradientBtn(text: AppText.kGetStarted,
              btnHieght: 40.h,
              radius: 20,
              btnWidth: ScreenUtil().screenWidth - 100,
              onTap: (){

              //Storage().setBool('Open', true);
              context.go('/home');
              },


            ),


          ],
        ),
      ),
    );
  }
}

*/
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Kolors.kWhite,
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        child: Column(
          children: [
            SizedBox(height: 40.h),
            // Réduction de la taille de l'image
            Image.asset(
              R.ASSETS_IMAGES_GETSTARTED_PNG,
              width: 400.w,
            ),
            SizedBox(height: 20.h),
            Text(
              AppText.kWelcomeHeader,
              textAlign: TextAlign.center,
              style: appStyle(22, Kolors.kPrimary, FontWeight.bold),
            ),
            SizedBox(
              width: ScreenUtil().screenWidth - 50,
              child: Text(
                AppText.kWelcomeMessage,
                textAlign: TextAlign.center,
                style: appStyle(12, Kolors.kGray, FontWeight.normal),
              ),
            ),
            SizedBox(height: 10.h),
            GradientBtn(
              text: AppText.kGetStarted,
              btnHieght: 40.h,
              radius: 20,
              btnWidth: ScreenUtil().screenWidth - 100,
              onTap: () {
                //Storage().setBool('Open', true);
                context.go('/home');
              },
            ),
          ],
        ),
      ),
    );
  }
}

