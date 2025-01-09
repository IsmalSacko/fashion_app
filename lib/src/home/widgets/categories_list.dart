import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_shop/common/utils/kcolors.dart';
import 'package:mobile_shop/common/widgets/app_style.dart';
import 'package:mobile_shop/common/widgets/reusable_text.dart';
import 'package:mobile_shop/const/constants.dart';
import 'package:mobile_shop/src/categories/controllers/category_notifier.dart';
import 'package:provider/provider.dart';

class HomeCategoriesList extends StatelessWidget {
  const HomeCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          height: 80.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(categories.length, (i) {
              final category = categories[i];
              return GestureDetector(
                  onTap: () {
                    context
                        .read<CategoryNotifier>()
                        .setCategory(category.title, category.id);
                    context.push('/category');
                  },
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Kolors.kSecondaryLight,
                          child: Padding(
                            padding: EdgeInsets.all(4.h),
                            child: Image.network(category.image,
                                width: 40.w, height: 40.h),
                          ),
                        ),
                        ReusableText(
                            text: category.title,
                            style:
                                appStyle(12, Kolors.kGray, FontWeight.normal))
                      ],
                    ),
                  ));
            }),
          ),
        ));
  }
}
