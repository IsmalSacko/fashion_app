import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_shop/common/utils/kcolors.dart';
import 'package:mobile_shop/common/utils/kstrings.dart';
import 'package:mobile_shop/common/widgets/app_style.dart';
import 'package:mobile_shop/common/widgets/back_button.dart';
import 'package:mobile_shop/common/widgets/reusable_text.dart';
import 'package:mobile_shop/const/constants.dart';
import 'package:mobile_shop/src/categories/controllers/category_notifier.dart';
import 'package:provider/provider.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const AppBackButton(),
          title: ReusableText(
              text: AppText.kCategories,
              style: appStyle(20, Kolors.kPrimary, FontWeight.bold)),
        ),
        body: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, i) {
              final category = categories[i];
              return ListTile(
                onTap: () {
                  context
                      .read<CategoryNotifier>()
                      .setCategory(category.title, category.id);
                  context.push('/category');
                },
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Kolors.kSecondaryLight,
                  child: Padding(
                    padding: EdgeInsets.all(8.h),
                    child: Image.network(category.image),
                  ),
                ),
                title: ReusableText(
                    text: category.title,
                    style: appStyle(16, Kolors.kPrimary, FontWeight.bold)),
                subtitle: ReusableText(
                    text: category.description,
                    style: appStyle(14, Kolors.kDark, FontWeight.normal)),
                // price
                trailing: const Icon(
                    MaterialCommunityIcons.chevron_double_right,
                    color: Kolors.kPrimary,
                    size: 20),
              );
            }));
  }
}
