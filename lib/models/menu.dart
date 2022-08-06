enum Category {
  coffee,
  tea,
  milk,
  juice,
}

class Menu {
  final String name;
  final String imageAsset;
  final int price;
  final bool isBestSelling;
  final Category category;
  final String description;

  Menu({
    required this.name,
    required this.imageAsset,
    required this.price,
    required this.isBestSelling,
    required this.category,
    required this.description,
  });
}
