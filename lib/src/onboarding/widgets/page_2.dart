import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/utils/kcolors.dart';
import '../../../common/utils/kstrings.dart';
import '../../../common/widgets/app_style.dart';
import '../../../const/resource.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        child: Stack(
          children: [

            Center(
                heightFactor: 0.9,
                child: Image.asset(
                R.ASSETS_IMAGES_WISHLIST_PNG
                ,fit: BoxFit.cover,height: ScreenUtil().screenHeight *2.9,
                  width: ScreenUtil().screenWidth * 2.9,) ),
            Positioned(
                bottom: 70,
                left: 30,
                right: 30,
                child: Text(
                  AppText.kOnboardWishListMessage,
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