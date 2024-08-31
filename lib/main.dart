import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geulis_digitalk/bloc/page_nav_bar_bloc.dart';
import 'package:geulis_digitalk/pages/cart_page.dart';
import 'package:geulis_digitalk/pages/checkout_page.dart';
import 'package:geulis_digitalk/pages/login_page.dart';
import 'package:geulis_digitalk/pages/nav_page.dart';
import 'package:geulis_digitalk/pages/on_delivery_page.dart';
import 'package:geulis_digitalk/pages/packaging_page.dart';
import 'package:geulis_digitalk/pages/payment_page.dart';
import 'package:geulis_digitalk/pages/product_detail_page.dart';
import 'package:geulis_digitalk/pages/product_order_tab_bar_page.dart';
import 'package:geulis_digitalk/pages/rating_page.dart';
import 'package:geulis_digitalk/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => PageNavBarBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: NavPage(),
        routes: {
          '/loginpage': (context) => const LoginPage(),
          '/registerpage': (context) => const RegisterPage(),
          '/navpage': (context) => NavPage(),
          '/productdetailpage': (context) => const ProductDetailPage(),
          '/cartpage': (context) => const CartPage(),
          '/checkoutpage': (context) => const CheckoutPage(),
          '/paymentpage': (context) => const PaymentPage(),
          '/packagingpage': (context) => const ProductOrderTabBarPage(),
        },
      ),
    );
  }
}
