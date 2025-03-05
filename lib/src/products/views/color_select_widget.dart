import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_shop/common/utils/kcolors.dart';
import 'package:mobile_shop/common/widgets/app_style.dart';
import 'package:mobile_shop/common/widgets/reusable_text.dart';
import 'package:mobile_shop/const/constants.dart';
import 'package:mobile_shop/src/products/controllers/colors_sizers_notifier.dart';
import 'package:mobile_shop/src/products/controllers/product_notifier.dart';
import 'package:provider/provider.dart';

class ColorSelectWidget extends StatelessWidget {
  const ColorSelectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorsSizersNotifier>(
      builder: (context, controller, child) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              context.read<ProductNotifier>().product!.title.length,
              (i) {
                String c = context.read<ProductNotifier>().product!.types[i];
                return GestureDetector(
                  onTap: () {
                    controller.setColor(c);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    margin: EdgeInsets.only(right: 20.w),
                    decoration: BoxDecoration(
                      borderRadius: kRadiusAll,
                      color: c == controller.colors
                          ? Kolors.kPrimary
                          : Kolors.kGrayLight,
                    ),
                    child: ReusableText(
                      text: c,
                      style: appStyle(20, Kolors.kWhite, FontWeight.normal),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
