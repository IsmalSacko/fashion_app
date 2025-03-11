import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_shop/src/auth/views/registration_sreen.dart';
import 'package:mobile_shop/src/categories/views/categories_page.dart';
import 'package:mobile_shop/src/categories/views/category_page.dart';
import 'package:mobile_shop/src/frofile/views/order_screen.dart';
import 'package:mobile_shop/src/frofile/views/policy_screen.dart';
import 'package:mobile_shop/src/frofile/views/shipping_adress_screen.dart';
import 'package:mobile_shop/src/notification/views/notification_screen.dart';
import 'package:mobile_shop/src/products/views/product_screen.dart';
import 'package:mobile_shop/src/search/views/search_screen.dart';

import '../../src/auth/views/login_screen.dart';
import '../../src/entrypoint/views/entrypoint.dart';
import '../../src/onboarding/views/onboarding_page.dart';
import '../../src/splashscreen/views/splashscreen_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final GoRouter _router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => AppEntryPoint(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
        path: '/register',
        builder: (context, state) => const RegistrationPage()),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) => const NotificationPage(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchPage(),
    ),
    GoRoute(
      path: '/categories',
      builder: (context, state) => const CategoriesPage(),
    ),
    GoRoute(
      path: '/category',
      builder: (context, state) => const CategoryPage(),
    ),
    GoRoute(
      path: '/product/:id',
      builder: (BuildContext context, GoRouterState state) {
        final productId = state.pathParameters['id'];
        return ProductPage(productId: productId.toString());
      },
    ),
    GoRoute(
      path: '/policy',
      builder: (context, state) => const PolicyScreen(),
    ),
    GoRoute(
      path: '/addresses',
      builder: (context, state) => const ShippingAdressScreen(),
    ),
    GoRoute(
      path: '/orders',
      builder: (context, state) => const OrderScreen(),
    ),
    /*
    GoRoute(
      path: '/review',
      builder: (context, state) => const ReviewsPage(),
    ),
    GoRoute(
      path: '/verification',
      builder: (context, state) => const VerificationPage(),
    ),
   
    GoRoute(
      path: '/help',
      builder: (context, state) => const HelpCenterPage(),
    ),

    GoRoute(
      path: '/register',
      builder: (context, state) => const RegistrationPage(),
    ),



    GoRoute(
      path: '/addaddress',
      builder: (context, state) => const AddAddress(),
    ),




     GoRoute(
      path: '/tracking',
      builder: (context, state) => const TrackOrderPage(),
    ),

    GoRoute(
      path: '/checkout',
      builder: (context, state) => const CheckoutPage(),
    ),

      GoRoute(
      path: '/successful',
      builder: (context, state) => const SuccessfulPayment(),
    ),

      GoRoute(
      path: '/failed',
      builder: (context, state) => const FailedPayment(),
    ),


    */
  ],
);

GoRouter get router => _router;
