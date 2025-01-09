import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_shop/common/utils/kcolors.dart';
import 'package:mobile_shop/common/widgets/app_style.dart';
import 'package:mobile_shop/common/widgets/custom_button.dart';
import 'package:mobile_shop/common/widgets/reusable_text.dart';
import 'package:mobile_shop/const/constants.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: kRadiusAll,
        child: Stack(
          children: [
            SizedBox(
              height: ScreenUtil().screenHeight * 0.16,
              width: ScreenUtil().screenWidth,
              child: ImageSlideshow(
                indicatorColor: Kolors.kPrimaryLight,
                onPageChanged: (p) {},
                autoPlayInterval: 5000,
                isLoop: true,
                children: List.generate(images.length, (i) {
                  return CachedNetworkImage(
                    placeholder: placeholder,
                    errorWidget: errorWidget,
                    imageUrl: images[i],
                    fit: BoxFit.cover,
                  );
                }),
              ),
            ),
            Positioned(
              child: SizedBox(
                height: ScreenUtil().screenHeight * 0.16,
                width: ScreenUtil().screenWidth,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: ReusableText(
                            text: "Nouvelle Collection",
                            style: appStyle(
                                20, Kolors.kOffWhite, FontWeight.normal)),
                      ),
                      Opacity(
                          opacity: 0.5,
                          child: Text(
                              'Reduction de 50% sur \nla premiere commande \nValable jusqu\'au 31/01/2025',
                              style: appStyle(
                                  14, Kolors.kDark, FontWeight.normal))),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 10.0, left: 10.0),
                        child: CustomButton(
                          text: "Acheter maintenant",
                          onTap: () {},
                          btnWidth: 150.w,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

List<String> images = [
  'https://a.eu.mktgcdn.com/f/100003804/cYOEM2Nbu11nvkF22ZryxCbgaBNEzRcM9tWKeCCQRy8.png',
  'https://www.ariase.com/uploads/media/samsung-galaxy-a14-couleurs.jpg',
  'https://images.all-free-download.com/images/graphicwebp/web_technology_conceptual_banner_template_modern_3d_light_effect_6939026.webp',
  'https://images.all-free-download.com/images/graphicwebp/mobile_shop_banner_template_dynamic_geometric_shape_smart_devices_6934856.webp',
  'https://technoplace.ma/img/c/515_thumb.jpg',
];

List<String> categ = [
  'https://a.eu.mktgcdn.com/f/100003804/cYOEM2Nbu11nvkF22ZryxCbgaBNEzRcM9tWKeCCQRy8.png',
  'https://www.ariase.com/uploads/media/samsung-galaxy-a14-couleurs.jpg',
  'https://images.all-free-download.com/images/graphicwebp/web_technology_conceptual_banner_template_modern_3d_light_effect_6939026.webp',
  'https://images.all-free-download.com/images/graphicwebp/mobile_shop_banner_template_dynamic_geometric_shape_smart_devices_6934856.webp',
  'https://technoplace.ma/img/c/515_thumb.jpg',
];
