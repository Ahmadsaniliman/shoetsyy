
import 'package:flutter/material.dart';

class DiscoverAppBar extends StatelessWidget {
  const DiscoverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Discover',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        Stack(
          children: [
            Image.asset('assets/images/bag-2.png'),
            Positioned(
                right: 0,
                child: Image.asset('assets/images/Ellipse 520.png')),
          ],
        )
      ],
    );
  }
}
