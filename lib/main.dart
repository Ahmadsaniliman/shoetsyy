import 'package:flutter/material.dart';
import 'package:shoety/view/components/carts.dart';
import 'package:shoety/view/discover_page.dart';
import 'package:shoety/view/order_summary.dart';
import 'package:shoety/view/product_filter.dart';
import 'package:shoety/view/reviews.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoetsy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      routes: {
        'discoverpage': (context) => const DiscoverPage(),
        'filterpage': (context) => const ProductFilterPage(),
        'reviewpage': (context) => const ReviewsPage(),
        'cartpage': (context) => const CartPage(),
        'orderpage': (context) => const OrderSummary(),
      },
      home: const DiscoverPage(),
    );
  }
}
