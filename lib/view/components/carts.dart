import 'package:flutter/material.dart';
import 'package:shoety/view/components/cart_bar.dart';
import 'package:shoety/view/components/cart_dism.dart';
import 'package:shoety/view/components/cart_nav.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CartNavBar(),
      body:  Column(
        children: [
          CartBar(),
          CartDism(),
        ],
      ),
    );
  }
}


