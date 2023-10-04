import 'package:flutter/material.dart';
import 'package:shoety/routes/routes.dart';

class ProductDetailsBar extends StatelessWidget {
  const ProductDetailsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 44,
        right: 30,
        left: 10,
      ),
      child: SizedBox(
        height: 55,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(discoverpage);
              },
              icon: const Icon(Icons.arrow_back),
            ),
            Image.asset('assets/images/bag-2.png'),
          ],
        ),
      ),
    );
  }
}