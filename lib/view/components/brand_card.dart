
import 'package:flutter/material.dart';
import 'package:shoety/product/brands.dart';
import 'package:shoety/routes/routes.dart';

class BrandsCard extends StatelessWidget {
  const BrandsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 20,
      ),
      child: SizedBox(
        height: 143,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Brands',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                  5,
                  (index) => SizedBox(
                    height: 97,
                    width: 72,
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image.asset(
                            brands[index].image,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          brands[index].name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(brands[index].items),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FilterBar extends StatelessWidget {
  const FilterBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 44,
        left: 10,
        right: 30,
      ),
      child: SizedBox(
        height: 55,
        width: double.infinity,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(discoverpage);
              },
              icon: const Icon(
                Icons.arrow_back,
              ),
            ),
            const SizedBox(
              width: 120,
            ),
            const Text(
              'Filter',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
