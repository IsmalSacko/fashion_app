import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_shop/common/utils/kcolors.dart';
import 'package:mobile_shop/common/utils/kstrings.dart';
import 'package:mobile_shop/common/widgets/app_style.dart';
import 'package:mobile_shop/common/widgets/back_button.dart';
import 'package:mobile_shop/common/widgets/reusable_text.dart';
import 'package:mobile_shop/common/widgets/shimmers/list_shimmer.dart';
import 'package:mobile_shop/src/categories/controllers/category_notifier.dart';
import 'package:provider/provider.dart';

import '../hook/fetch_categories.dart';

class CategoriesPage extends HookWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final results = fetchCategories();
    final categories = results.categories;
    final loading = results.isLoading;
    //final error = results.error;

    if (loading) {
      return const Scaffold(
        body: ListShimmer(),
      );
    }
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
                  radius: 24,
                  backgroundColor: Kolors.kSecondaryLight,
                  child: Padding(
                    padding: EdgeInsets.all(8.h),
                    child: Image.network(category.imageUrl),
                  ),
                ),
                title: ReusableText(
                    text: category.title,
                    style: appStyle(16, Kolors.kPrimary, FontWeight.bold)),

                // price
                trailing: const Icon(
                    MaterialCommunityIcons.chevron_double_right,
                    color: Kolors.kPrimary,
                    size: 20),
              );
            }));
  }
}
