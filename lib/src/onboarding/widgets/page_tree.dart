import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/utils/kcolors.dart';
import '../../../common/utils/kstrings.dart';
import '../../../common/widgets/app_style.dart';
import '../../../const/resource.dart';

class PageTree extends StatelessWidget {
  const PageTree({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        child: Stack(
          children: [

            Column(
              children: [
                Center(child: Image.asset(
                    R.ASSETS_IMAGES_SCREEN_3_PNG,fit: BoxFit.cover,height: 520.h,) ),
              ],
            ),
            Positioned(
                bottom: 100,
                left: 30,
                right: 30,
                child: Text(
                  AppText.kOnboardHome,
                  textAlign: TextAlign.center,
                  style: appStyle(
                      12,
                      Kolors.kGray,
                      FontWeight.normal
                  ),
                )
            )
          ],
        )
    );
  }
}