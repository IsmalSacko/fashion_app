import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_shop/common/utils/kcolors.dart';
import 'package:mobile_shop/common/widgets/app_style.dart';
import 'package:mobile_shop/common/widgets/reusable_text.dart';
import 'package:mobile_shop/src/home/views/notification_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 3.0),
            child: ReusableText(
                text: "Location",
                style: appStyle(12, Kolors.kGray, FontWeight.normal)),
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              const Icon(Icons.location_on, color: Kolors.kPrimary, size: 16),
              Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: SizedBox(
                  width: ScreenUtil().screenWidth * 0.7,
                  child: Text("Please select a location",
                      maxLines: 1,
                      style: appStyle(14, Kolors.kDark, FontWeight.w500)),
                ),
              ),
            ],
          ),
        ],
      ),
      actions: const [
        NotificationWidget(),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(55.h),
        child: GestureDetector(
            onTap: () {
              context.push('/search');
            },
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        width: ScreenUtil().screenWidth - 80,
                        height: 40.h,
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 0.5, color: Kolors.kGrayLight),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(Icons.search,
                                  color: Kolors.kPrimaryLight, size: 20),
                              SizedBox(width: 20.w),
                              ReusableText(
                                  text: "Rechercher des produits",
                                  style: appStyle(
                                      14, Kolors.kGray, FontWeight.w400)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // deuxième icôn dans un container
                    Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          color: Kolors.kPrimary,
                          borderRadius: BorderRadius.circular(9)),
                      child:
                          const Icon(FontAwesome.sliders, color: Colors.white),
                    ),
                  ],
                ))),
      ),
    );
  }
}
