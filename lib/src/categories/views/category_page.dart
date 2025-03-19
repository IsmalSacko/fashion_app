import 'package:flutter/material.dart';
import 'package:mobile_shop/common/utils/kcolors.dart';
import 'package:mobile_shop/common/widgets/app_style.dart';
import 'package:mobile_shop/common/widgets/back_button.dart';
import 'package:mobile_shop/common/widgets/reusable_text.dart';
import 'package:mobile_shop/src/categories/controllers/category_notifier.dart';
import 'package:mobile_shop/src/categories/widgets/products_by_category.dart';
import 'package:provider/provider.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Kolors.kGrayLight,
          leading: const AppBackButton(),
          title: ReusableText(
              text: context.read<CategoryNotifier>().category,
              style: appStyle(16, Kolors.kPrimary, FontWeight.bold))),
      body: const ProductsByCategory(),
    );
  }
}
