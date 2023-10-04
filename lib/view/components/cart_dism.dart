
import 'package:flutter/material.dart';

class CartDism extends StatelessWidget {
  const CartDism({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          5,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 20,
            ),
            child: SizedBox(
              height: 88,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 88,
                    width: 88,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: Image.asset('assets/images/image 27.png'),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Jordan 1 Retro High Tie Dye',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const Text('Nike . Red Grey . 40'),
                      Row(
                        children: [
                          const Text(
                            '\$235,00',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 100),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Text('-'),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text('1'),
                              const SizedBox(width: 10),
                              Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(),
                                ),
                                child: const Center(
                                  child: Text('+'),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}