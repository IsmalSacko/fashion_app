import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:mobile_shop/common/utils/kcolors.dart';
import 'package:mobile_shop/common/widgets/app_style.dart';
import 'package:mobile_shop/common/widgets/reusable_text.dart';

class ProductBottomBar extends StatelessWidget {
  const ProductBottomBar({super.key, required this.prixTotal, this.onPressed});

  final String prixTotal;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.h,
      color: Colors.white.withOpacity(.6),
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 0, 12.w, 12.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: ReusableText(
                      text: "Prix total",
                      style: appStyle(14, Kolors.kGray, FontWeight.w600)),
                ),
                ReusableText(
                    text: '$prixTotal FCFA',
                    style: appStyle(16, Kolors.kDark, FontWeight.w700)),
              ],
            ),
            SizedBox(
              width: 20.w,
            ),
            ElevatedButton(
              onPressed: onPressed,
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Kolors.kPrimary),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(FontAwesome.shopping_bag,
                      size: 16, color: Kolors.kWhite),
                  SizedBox(width: 8.w),
                  ReusableText(
                      text: "Commander",
                      style: appStyle(14, Kolors.kWhite, FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
