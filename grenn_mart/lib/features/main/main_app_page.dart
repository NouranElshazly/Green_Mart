import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:grenn_mart/core/constants/app_images.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/widgets/svg_picture_custome.dart';
import 'package:grenn_mart/features/cart/pages/cart_screen.dart';
import 'package:grenn_mart/features/explore/pages/explore_screen.dart';
import 'package:grenn_mart/features/favourite/pages/favourite_screen.dart';
import 'package:grenn_mart/features/home/pages/home_screen.dart';
import 'package:grenn_mart/features/profile/pages/profile_screen.dart';

class MainAppPage extends StatefulWidget {
  const MainAppPage({super.key});

  @override
  State<MainAppPage> createState() => _MainAppPageState();
}

class _MainAppPageState extends State<MainAppPage> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.only(top: 10),

        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(237, 101, 107, 118).withValues(alpha: .2),
              spreadRadius: 11,
              blurRadius: 33,
              offset: Offset(0, 11),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPictureCustome(path: AppImages.storeSvg),
              activeIcon: SvgPictureCustome(
                path: AppImages.storeSvg,
                color: AppColors.primaryColor,
              ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: SvgPictureCustome(path: AppImages.exploreSvg),
              activeIcon: SvgPictureCustome(
                path: AppImages.exploreSvg,
                color: AppColors.primaryColor,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: SvgPictureCustome(path: AppImages.cartSvg),
              activeIcon: SvgPictureCustome(
                path: AppImages.cartSvg,
                color: AppColors.primaryColor,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: SvgPictureCustome(path: AppImages.heartSvg),
              activeIcon: SvgPictureCustome(
                path: AppImages.heartSvg,
                color: AppColors.primaryColor,
              ),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: SvgPictureCustome(path: AppImages.userSvg),
              activeIcon: SvgPictureCustome(
                path: AppImages.userSvg,
                color: AppColors.primaryColor,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
