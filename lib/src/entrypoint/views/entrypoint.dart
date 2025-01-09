import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:mobile_shop/common/utils/kcolors.dart';
import 'package:mobile_shop/common/widgets/app_style.dart';
import 'package:mobile_shop/src/card/views/card_screen.dart';
import 'package:mobile_shop/src/entrypoint/controllers/botton_tab_notifier.dart';
import 'package:mobile_shop/src/frofile/views/profile_screen.dart';
import 'package:mobile_shop/src/home/views/home_screen.dart';
import 'package:mobile_shop/src/wishlist/views/wishlistscreen.dart';
import 'package:provider/provider.dart';

class AppEntryPoint extends StatelessWidget {
  AppEntryPoint({super.key});

  final List<Widget> pageList = [
    const HomePage(),
    const WishlistPage(),
    const CardPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabIndexNotifier>(
      builder: (context, tabIndexNotifier, child) {
        return Scaffold(
          body: Stack(
            children: [
              pageList[tabIndexNotifier.tabIndex],
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                  data: Theme.of(context).copyWith(
                      canvasColor: const Color.fromARGB(255, 243, 248, 245)),
                  child: BottomNavigationBar(
                    selectedFontSize: 12,
                    elevation: 0,
                    showSelectedLabels: true,
                    selectedLabelStyle:
                        appStyle(12, Kolors.kPrimary, FontWeight.w500),
                    showUnselectedLabels: false,
                    currentIndex: tabIndexNotifier.tabIndex,
                    selectedItemColor: Kolors.kPrimary,
                    unselectedItemColor: Kolors.kGray,
                    unselectedIconTheme:
                        const IconThemeData(color: Colors.black38),
                    onTap: (index) {
                      tabIndexNotifier.setTabIndex(index);
                    },
                    items: [
                      BottomNavigationBarItem(
                        icon: tabIndexNotifier.tabIndex == 0
                            ? const Icon(
                                AntDesign.home,
                                size: 24,
                                color: Kolors.kPrimary,
                              )
                            : const Icon(
                                AntDesign.home,
                                size: 24,
                              ),
                        label: 'Home',
                      ),

                      // wishlist button and icon
                      BottomNavigationBarItem(
                        icon: tabIndexNotifier.addListener == 1
                            ? const Icon(
                                Ionicons.ios_heart,
                                size: 24,
                                color: Kolors.kPrimary,
                              )
                            : const Icon(
                                Ionicons.ios_heart_outline,
                                size: 24,
                              ),
                        label: 'Wishlist',
                      ),

                      // card button and icon
                      BottomNavigationBarItem(
                          icon: tabIndexNotifier.tabIndex == 2
                              ? const Badge(
                                  label: Text("9"),
                                  child: Icon(
                                    MaterialCommunityIcons.shopping_outline,
                                    size: 24,
                                    color: Kolors.kPrimary,
                                  ),
                                )
                              : const Badge(
                                  label: Text("8"),
                                  child: Icon(
                                    MaterialCommunityIcons.shopping_outline,
                                    size: 24,
                                  ),
                                ),
                          label: 'Card'),

                      // profile button and icon
                      BottomNavigationBarItem(
                        icon: tabIndexNotifier.tabIndex == 3
                            ? const Icon(
                                EvilIcons.user,
                                size: 33,
                                color: Kolors.kPrimary,
                              )
                            : const Icon(
                                EvilIcons.user,
                                size: 33,
                              ),
                        label: 'Profile',
                      ),
                    ],
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
