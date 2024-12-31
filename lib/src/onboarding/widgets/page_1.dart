import 'package:fashio_app/common/utils/kcolors.dart';
import 'package:fashio_app/common/utils/kstrings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/widgets/app_style.dart';
import '../../../const/resource.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenHeight,
      child: Stack(
        children: [
          Center(
            heightFactor: 1.1,
              child: Image.asset(
              R.ASSETS_IMAGES_EXPERIENCE_PNG,fit: BoxFit.cover,height: 440.h,) ),
           Positioned(
            bottom: 20,
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