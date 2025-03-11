import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_shop/common/services/storage.dart';
import 'package:mobile_shop/common/utils/kcolors.dart';
import 'package:mobile_shop/common/utils/kstrings.dart';
import 'package:mobile_shop/common/widgets/app_style.dart';
import 'package:mobile_shop/common/widgets/custom_button.dart';
import 'package:mobile_shop/common/widgets/help_bottom_sheet.dart';
import 'package:mobile_shop/common/widgets/reusable_text.dart';
import 'package:mobile_shop/src/auth/views/login_screen.dart';
import 'package:mobile_shop/src/frofile/widget/tile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');
    if (accessToken == null) {
      return const LoginPage();
    }
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              const CircleAvatar(
                  radius: 35,
                  backgroundColor: Kolors.kOffWhite,
                  backgroundImage: NetworkImage(AppText.kProfilePic)),
              SizedBox(
                height: 10.h,
              ),
              ReusableText(
                  text: "support@sackoservices.com",
                  style: appStyle(11, Kolors.kGray, FontWeight.w600)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                decoration: BoxDecoration(
                  color: Kolors.kOffWhite,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: ReusableText(
                    text: "Ismaél SACKO",
                    style: appStyle(14, Kolors.kDark, FontWeight.w600)),
              )
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                // Mes commandes
                ProfileTileWidget(
                  title: "Mes commandes",
                  leading: Icons.shopping_bag_outlined,
                  onTap: () {
                    context.push('/orders');
                  },
                ),
                // Mes adresses
                ProfileTileWidget(
                  title: "Mes adresses de livraison",
                  leading: Icons.location_on_outlined,
                  onTap: () {
                    context.push('/addresses');
                  },
                ),
                // Politique de confidentialité
                ProfileTileWidget(
                  title: "Politique de confidentialité",
                  leading: Icons.privacy_tip_outlined,
                  onTap: () {
                    context.push('/policy');
                  },
                ),
                // Centre d'aide
                ProfileTileWidget(
                  title: "Centre d'aide",
                  leading: AntDesign.customerservice,
                  onTap: () => showHelpCenterBottomSheet(context),
                ),
                // Mes informations
                ProfileTileWidget(
                  title: "Mes informations",
                  leading: Icons.person_outline,
                  onTap: () {},
                ),

                // Mes moyens de paiement
                ProfileTileWidget(
                  title: "Mes moyens de paiement",
                  leading: Icons.credit_card_outlined,
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: CustomButton(
              text: "Se déconnecter".toUpperCase(),
              btnColor: Colors.red,
              btnWidth: ScreenUtil().screenWidth,
              btnHieght: 45.h,
            ),
          ),
        ],
      ),
    );
  }
}
