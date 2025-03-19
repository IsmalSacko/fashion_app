import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mobile_shop/common/services/storage.dart';
import 'package:mobile_shop/common/widgets/login_bottom_sheet.dart';
import 'package:mobile_shop/common/widgets/shimmers/list_shimmer.dart';
import 'package:mobile_shop/src/categories/controllers/category_notifier.dart';
import 'package:mobile_shop/src/categories/hook/results/fetch_products_by_category.dart';
import 'package:mobile_shop/src/products/widgets/staggered_tile_widget.dart';
import 'package:provider/provider.dart';

class ProductsByCategory extends HookWidget {
  const ProductsByCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');
    final results =
        fetchProductsByCategories(context.read<CategoryNotifier>().id);
    final products = results.products;
    final loading = results.isLoading;
    //final error = results.error;

    if (loading) {
      return const Scaffold(
        body: ListShimmer(),
      );
    }
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.h),
      child: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: List.generate(products.length, (i) {
            final double mainAxisCellCount = (i % 2 == 0 ? 2.4 : 2.4);
            final product = products[i];

            return StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: mainAxisCellCount,
              child: StaggeredTileWidget(
                onTap: () {
                  if (accessToken == null) {
                    loginBottomSheet(context);
                  } else {
                    // handle product tap
                  }
                },
                product: product,
                i: i,
              ),
            );
          }),
        ),
      ),
    );
  }
}
