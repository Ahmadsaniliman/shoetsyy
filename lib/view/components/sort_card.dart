
import 'package:flutter/material.dart';

class SortByCard extends StatelessWidget {
  const SortByCard({
    super.key,
    required this.sortByIndex,
    required this.sortBy,
  });

  final int sortByIndex;
  final List<String> sortBy;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 20,
      ),
      child: SizedBox(
        height: 86,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sort By',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    3,
                    (index) => Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 40,
                      width: 127,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(),
                        color: sortByIndex == index ? Colors.black : null,
                      ),
                      child: Center(
                        child: Text(
                          sortBy[index],
                          style: TextStyle(
                            color: sortByIndex == index
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}