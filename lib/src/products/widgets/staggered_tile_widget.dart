import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_shop/common/utils/kcolors.dart';
import 'package:mobile_shop/common/widgets/app_style.dart';
import 'package:mobile_shop/common/widgets/reusable_text.dart';
import 'package:mobile_shop/src/products/controllers/product_notifier.dart';
import 'package:mobile_shop/src/products/models/product_model.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class StaggeredTileWidget extends StatelessWidget {
  const StaggeredTileWidget({
    super.key,
    required this.i,
    required this.product,
    required this.onTap,
  });

  final int i;
  final Products product;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat("#,##0", "fr_FR");
    const double tauxDeConversion = 655.96;
    return GestureDetector(
      onTap: () {
        context.read<ProductNotifier>().setProduct(product);
        context.push('/product/${product.id}');
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Kolors.kOffWhite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w)
                    .copyWith(bottom: 0),
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.width / 2.1 * 0.7,
                color: Kolors.kPrimary,
                child: Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: product.imageUrls[0],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Positioned(
                      top: 10.h,
                      right: 10.h,
                      child: GestureDetector(
                        onTap: onTap,
                        child: const CircleAvatar(
                          backgroundColor: Kolors.kSecondaryLight,
                          child: Icon(
                            AntDesign.heart,
                            color: Kolors.kRed,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Text(
                        product.title,
                        overflow: TextOverflow.ellipsis,
                        style: appStyle(13, Kolors.kDark, FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Row(
                        children: [
                          const Icon(
                            AntDesign.star,
                            color: Kolors.kGold,
                            size: 14,
                          ),
                          SizedBox(
                            child: Text(
                              product.rating.toString(),
                              style:
                                  appStyle(13, Kolors.kGray, FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: ReusableText(
                  // Il faut convertir le prix en FCFA
                  text:
                      '${formatter.format(((product.price * tauxDeConversion) / 100).round() * 100)} FCFA',
                  // text: '${formatter.format(product.price)} FCFA',
                  //text: '${product.price.toStringAsFixed(0)} FCFA',
                  style: appStyle(14, Kolors.kPrimaryLight, FontWeight.w500),
                ),
              ),
              Text(
                '${product.price} €',
                style: appStyle(10, Kolors.kGray, FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
