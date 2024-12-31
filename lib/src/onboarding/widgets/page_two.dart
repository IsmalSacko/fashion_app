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
            Positioned(
                top: 100, // Ajustez cette valeur pour décaler l'image
                left: 30,
                right: 30,
                child: Image.asset(
                R.ASSETS_IMAGES_WISHLIST_PNG
                ,fit: BoxFit.cover,height: ScreenUtil().screenHeight * 0.5,
                  width: ScreenUtil().screenWidth ) ),
            Positioned(
                bottom: 100,
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