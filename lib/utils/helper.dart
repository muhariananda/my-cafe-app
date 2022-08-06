import '../models/models.dart';

String greeting() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Selamat Pagi';
  } else if (hour < 17) {
    return 'Selamat Siang';
  } else {
    return 'Selamat Malam';
  }
}

String getLabelByCategory(Category category) {
  switch (category) {
    case Category.coffee:
      return 'Kopi';

    case Category.tea:
      return 'Teh';

    case Category.milk:
      return 'Susu';

    case Category.juice:
      return 'Soda';
  }
}

String getLabelBySizes(CupSizes size) {
  switch (size) {
    case CupSizes.small:
      return 'Kecil';
      
    case CupSizes.medium:
      return 'Sedang';
      
    case CupSizes.large:
      return 'Besar';
      
  }
}

int getTotalOrder(
  CupSizes size,
  int price,
  int count,
) {
  switch (size) {
    case CupSizes.small:
      return price * count;

    case CupSizes.medium:
      return (price + 2000) * count;

    case CupSizes.large:
      return (price + 3000) * count;
  }
}

extension FilterMenu on List<Menu> {
  List<Menu> filterByBestSelling() {
    return where((menu) => menu.isBestSelling).toList();
  }

  List<Menu> filterByCategory(Category category) {
    return where(
      (menu) {
        return menu.category == category;
      },
    ).toList();
  }

  List<Menu> filterBySearch(String query) {
    return where(
      (menu) {
        return menu.name.contains(query);
      },
    ).toList();
  }
}
