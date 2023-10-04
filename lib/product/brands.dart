class Brands {
  final String image, name, items;

  Brands({
    required this.image,
    required this.name,
    required this.items,
  });
}

final List<Brands> brands = [
  Brands(
    image: 'assets/images/Vector (44).png',
    name: 'Nike',
    items: '100 Items',
  ),
  Brands(
    image: 'assets/images/Vector (45).png',
    name: 'Puma',
    items: '200 Items',
  ),
  Brands(
    image: 'assets/images/Vector (46).png',
    name: 'Adidas',
    items: '300 Items',
  ),
  Brands(
    image: 'assets/images/Nike (2).png',
    name: 'Reebok',
    items: '400 Items',
  ),
  Brands(
    image: 'assets/images/Nike.png',
    name: 'Jordan',
    items: '500 Items',
  ),
];
