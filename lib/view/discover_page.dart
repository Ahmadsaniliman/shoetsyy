
import 'package:flutter/material.dart';
import 'package:shoety/view/components/dis_grid_view.dart';
import 'package:shoety/view/components/discover_app_bar.dart';
import 'package:shoety/view/components/filter_button.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> brandCategory = [
      'All',
      'Nike',
      'Jordan',
      'Adidas',
      'Reebok',
    ];
    int selectedOne = 0;
    return Scaffold(
      floatingActionButton: const FilterButton(),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 74,
          right: 30,
          left: 30,
        ),
        child: Column(
          children: [
            const DiscoverAppBar(),
            brandCate(brandCategory, selectedOne),
            const DiscGridView()
          ],
        ),
      ),
    );
  }

  Padding brandCate(List<String> brandCategory, int selectedOne) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            brandCategory.length,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  index = selectedOne;
                });
              },
              child: SizedBox(
                height: 30,
                child: Text(
                  brandCategory[index],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: selectedOne == index ? FontWeight.bold : null,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
