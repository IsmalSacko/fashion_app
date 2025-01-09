import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:mobile_shop/common/utils/kcolors.dart';
import 'package:mobile_shop/common/widgets/app_style.dart';
import 'package:mobile_shop/common/widgets/back_button.dart';
import 'package:mobile_shop/common/widgets/reusable_text.dart';
import 'package:mobile_shop/const/constants.dart';
import 'package:mobile_shop/src/products/controllers/product_notifier.dart';
import 'package:mobile_shop/src/products/views/expandable_text.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.productId});

  final String productId;

  @override
  Widget build(BuildContext context) {
    //context.read<ProductNotifier>().product?.title;
    return Consumer<ProductNotifier>(
      builder: (context, productnotifier, child) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Kolors.kWhite,
                expandedHeight: 320.h,
                collapsedHeight: 65.h,
                floating: false,
                pinned: true, // Ajouter cette ligne
                leading: const AppBackButton(),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: const CircleAvatar(
                        backgroundColor: Kolors.kSecondaryLight,
                        child: Icon(
                          AntDesign.heart,
                          color: Kolors.kRed,
                        ),
                      ),
                    ),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    //title: Text(productnotifier.product?.title ?? ''),
                    background: SizedBox(
                      height: 415.h,
                      child: ImageSlideshow(
                        indicatorColor: Kolors.kPrimaryLight,
                        autoPlayInterval: 15000,
                        isLoop: productnotifier.product!.image.length > 1
                            ? true
                            : false,
                        children: List.generate(
                            productnotifier.product!.image.length, (i) {
                          return CachedNetworkImage(
                            placeholder: placeholder,
                            errorWidget: errorWidget,
                            imageUrl: productnotifier.product!.image[i],
                            fit: BoxFit.cover,
                          );
                        }),
                      ),
                    )),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 10.h),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                            text: productnotifier.product!.types
                                .join('-')
                                .toUpperCase(),
                            style: appStyle(13, Kolors.kGray, FontWeight.w600)),
                        Row(
                          children: [
                            const Icon(
                              AntDesign.star,
                              color: Kolors.kGold,
                              size: 14,
                            ),
                            SizedBox(width: 5.w),
                            SizedBox(
                              child: ReusableText(
                                text: productnotifier.product!.ratings
                                    .toStringAsFixed(1),
                                style: appStyle(
                                    13, Kolors.kGray, FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 10.h),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: ReusableText(
                    text: productnotifier.product!.title,
                    style: appStyle(18, Kolors.kDark, FontWeight.w600),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpandableText(
                    text: productnotifier.product!.description,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
