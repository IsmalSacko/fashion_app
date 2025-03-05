import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_shop/common/utils/kcolors.dart';
import 'package:mobile_shop/common/widgets/app_style.dart';
import 'package:mobile_shop/src/products/controllers/colors_sizers_notifier.dart';
import 'package:mobile_shop/src/products/controllers/product_notifier.dart';
import 'package:provider/provider.dart';

class ProductSizesWidget extends StatelessWidget {
  const ProductSizesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorsSizersNotifier>(
      builder: (context, controller, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              context.read<ProductNotifier>().product!.sizes.length, (i) {
            String s = context.read<ProductNotifier>().product!.sizes[i];
            return GestureDetector(
              onTap: () {
                controller.setSize(s);
              },
              child: Container(
                height: 30.h,
                decoration: BoxDecoration(
                    color: controller.sizes == s
                        ? Kolors.kPrimary
                        : Kolors.kGrayLight,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text(
                  textAlign: TextAlign.center,
                  '${s.replaceAll("pouces", "").trim()}\'\'', // Supprime "pouces" et ajoute deux guillemets simplesÒ
                  style: appStyle(20, Kolors.kWhite, FontWeight.bold),
                )),
              ),
            );
          }),
        );
      },
    );
  }
}
