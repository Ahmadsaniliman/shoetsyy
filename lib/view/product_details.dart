import 'package:flutter/material.dart';
import 'package:shoety/product/shoe.dart';
import 'package:shoety/view/components/product_details_center.dart';
import 'package:shoety/view/components/product_details_nav.dart';
import 'package:shoety/view/components/products_details_bar.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.shoe});

  final Shoe shoe;
  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Colors.white,
      Colors.black,
      Colors.brown,
      Colors.blue
    ];
    final List<double> numbers = [39, 39.5, 40, 40.5, 41];
    int selectedIndex = 0;
    return Scaffold(
      bottomNavigationBar: const ProductDetailsBottom(),
      body: Column(
        children: [
          const ProductDetailsBar(),
          ProductDetailsCenter(
            shoe: shoe,
            colors: colors,
            selectedIndex: selectedIndex,
            numbers: numbers,
          ),
        ],
      ),
    );
  }
}




