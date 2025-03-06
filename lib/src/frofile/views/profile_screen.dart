import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:mobile_shop/common/widgets/custom_button.dart';
import 'package:mobile_shop/common/widgets/help_bottom_sheet.dart';
import 'package:mobile_shop/src/frofile/widget/tile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [],
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
                  onTap: () {},
                ),
                // Mes adresses
                ProfileTileWidget(
                  title: "Mes adresses de livraison",
                  leading: Icons.location_on_outlined,
                  onTap: () {},
                ),
                // Politique de confidentialité
                ProfileTileWidget(
                  title: "Politique de confidentialité",
                  leading: Icons.privacy_tip_outlined,
                  onTap: () {},
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
