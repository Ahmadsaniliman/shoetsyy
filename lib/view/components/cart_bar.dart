
import 'package:flutter/material.dart';

class CartBar extends StatelessWidget {
  const CartBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 44,
        left: 10,
      ),
      child: SizedBox(
        height: 55,
        width: double.infinity,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back),
            ),
            const SizedBox(
              width: 130,
            ),
            const Text('Cart'),
          ],
        ),
      ),
    );
  }
}
