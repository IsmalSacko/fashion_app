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
          // Décaler l'image vers le haut
          Positioned(
            top: 100, // Ajustez cette valeur pour décaler l'image
            left: 30,
            right: 30,
            child: Image.asset(
              R.ASSETS_IMAGES_EXPERIENCE_PNG,
              fit: BoxFit.cover,
              height: ScreenUtil().screenHeight * 0.5, // Taille ajustée pour éviter un débordement
            ),
          ),
          // Positionner le texte en bas
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
                FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
