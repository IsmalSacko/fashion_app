import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mobile_shop/common/services/storage.dart';
import 'package:mobile_shop/common/widgets/login_bottom_sheet.dart';
import 'package:mobile_shop/const/constants.dart';
import 'package:mobile_shop/src/products/widgets/staggered_tile_widget.dart';

class SimilairProducts extends StatelessWidget {
  const SimilairProducts({super.key});

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        children: List.generate(products.length, (i) {
          final double mainAxisCellCount = (i % 2 == 0 ? 2.17 : 2.4);
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
              ));
        }),
      ),
    );
  }
}
