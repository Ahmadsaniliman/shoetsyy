import 'package:flutter/material.dart';
import 'package:shoety/view/components/brand_card.dart';
import 'package:shoety/view/components/colors_card.dart';
import 'package:shoety/view/components/filter_nav.dart';
import 'package:shoety/view/components/gender_card.dart';
import 'package:shoety/view/components/price_card.dart';
import 'package:shoety/view/components/sort_card.dart';

class ProductFilterPage extends StatelessWidget {
  const ProductFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> sortBy = [
      'Most recent',
      'Highest Price',
      'Lowest Price',
    ];
    final List<String> gender = [
      'Man',
      'Woman',
      'Unisex',
    ];
    final List<Color> colors = [
      Colors.black,
      Colors.red,
      Colors.blue,
    ];
    final List<String> colorsText = [
      'Black',
      'Red',
      'Blue',
    ];
    int sortByIndex = 0;
    return Scaffold(
      bottomNavigationBar: const FilterNavBar(),
      body: Column(
        children: [
          const FilterBar(),
          const BrandsCard(),
          const PriceRangeCard(),
          SortByCard(sortByIndex: sortByIndex, sortBy: sortBy),
          GenderCard(sortByIndex: sortByIndex, gender: gender),
          ColorsCard(colors: colors, colorsText: colorsText),
        ],
      ),
    );
  }
}



