import 'package:my_caffe_app/models/models.dart';

final List<Menu> menusList = [
  ...coffeList,
  ...teaList,
  ...milkList,
  ...juices,
];

final coffeList = [
  Menu(
    name: 'Espresso',
    imageAsset: 'assets/coffe-espresso.jpg',
    price: 25000,
    isBestSelling: false,
    category: Category.coffee,
    description:
        'Espreso adalah jenis kopi yang dihasilkan dengan mengekstraksi biji kopi yang sudah digiling dengan menyemburkan air panas di bawah tekanan tinggi.',
  ),
  Menu(
    name: 'Caffe Latte',
    imageAsset: 'assets/coffe-latte.jpg',
    price: 18000,
    isBestSelling: true,
    category: Category.coffee,
    description:
        'Latte atau Caffè latte (Bahasa Italia yang artinya kopi susu) adalah espresso atau kopi yang dicampur dengan susu dan memiliki lapisan busa yang tipis di bagian atasnya.',
  ),
  Menu(
    name: 'Cappucino',
    imageAsset: 'assets/coffe-cappucino.jpg',
    price: 20000,
    isBestSelling: false,
    category: Category.coffee,
    description:
        'Cappuccino merupakan kopi yang populer dari Italia karena lebih sering dan lebih banyak dikonsumsi. Rasanya yang tidak terlalu pahit seperti espresso, membuat cappuccino lebih mudah diterima oleh lidah semua orang khususnya kalangan muda. Komposisinya terdiri atas espresso dan tambahan susu cair serta busa di atasnya.',
  ),
  Menu(
    name: 'Moka',
    imageAsset: 'assets/coffe-mocha.jpg',
    price: 23000,
    isBestSelling: true,
    category: Category.coffee,
    description:
        'Kopi moka (dari bahasa Belanda, mokka) adalah salah satu varietas kopi arabika dengan cita rasa khas. Kopi ini populer di kawasan Timur Tengah dan biasanya disajikan dengan cara tertentu, yang juga disebut "moka".',
  ),
  Menu(
    name: 'Frappe',
    imageAsset: 'assets/coffe-frappe.jpg',
    price: 20000,
    isBestSelling: false,
    category: Category.coffee,
    description:
        'Frappé adalah minuman es kopi khas Yunani yang bersalut buih, terbuat dari kopi instan, gula, air dan es. Frappé pertama kali diciptakan pada September 1957. Kopi ini pertama kali dibuat oleh Dimitrios Vakondios secara tidak disengaja.',
  ),
  Menu(
    name: 'Americano',
    imageAsset: 'assets/coffe-americano.jpg',
    price: 15000,
    isBestSelling: false,
    category: Category.coffee,
    description:
        'Frappé adalah minuman es kopi khas Yunani yang bersalut buih, terbuat dari kopi instan, gula, air dan es. Frappé pertama kali diciptakan pada September 1957. Kopi ini pertama kali dibuat oleh Dimitrios Vakondios secara tidak disengaja.',
  ),
];

final teaList = [
  Menu(
    name: 'Rosella Tea',
    imageAsset: 'assets/tea-rosella.jpg',
    price: 8000,
    isBestSelling: false,
    category: Category.tea,
    description:
        'Rosela, asam kumbang, asam susur, asam paya atau rosella (Hibiscus sabdariffa) adalah spesies bunga yang berasal dari benua Afrika. Mulanya bunga yang juga cantik untuk dijadikan penghias halaman rumah itu diseduh sebagai minuman hangat di musim dingin dan minuman dingin di musim panas.',
  ),
  Menu(
    name: 'Lemon Tea',
    imageAsset: 'assets/tea-lemon.jpg',
    price: 8000,
    isBestSelling: false,
    category: Category.tea,
    description:
        'Lemon tea adalah minuman rendah kalori yang akan membantu Anda mengatur dan mengurangi jumlah kalori yang Anda konsumsi.',
  ),
  Menu(
    name: 'Matcha',
    imageAsset: 'assets/tea-matcha.jpg',
    price: 15000,
    isBestSelling: true,
    category: Category.tea,
    description:
        'Matcha adalah teh yang sangat umum di Jepang sehingga bila disebut "teh" (ocha) maka kemungkinan besar yang dimaksudkan adalah teh hijau, dan baru disebut sebagai teh Jepang (nihoncha) kalau memang tersedia pilihan teh yang lain. Teh biasanya dijual dengan harga yang bergantung pada kualitas dan bagian dari tanaman yang dibuat teh. ',
  ),
  Menu(
    name: 'Honey Ice Tea',
    imageAsset: 'assets/tea-honey.jpg',
    price: 10000,
    isBestSelling: false,
    category: Category.tea,
    description:
        'Honey Ice Tea adalah teh yang didinginkan dengan es batu dan dicampurkan dengan madu. Es teh adalah minuman yang sering diminum saat siang hari karena suhu udara yang panas.',
  ),
  Menu(
    name: 'Black Tea',
    imageAsset: 'assets/tea-black.jpg',
    price: 7000,
    isBestSelling: false,
    category: Category.tea,
    description:
        'Teh hitam merupakan teh yang berasal dari Camellia sinensis sama seperti bahan teh hijau. Pengolahan teh hitam hampir mirip dengan teh hijau, tetapi daun teh hitam dibiarkan menjadi berwarna cokelat melalui proses oksidasi',
  ),
];

final milkList = [
  Menu(
    name: 'Chocolate milk',
    imageAsset: 'assets/milk-choco.jpg',
    price: 20000,
    isBestSelling: true,
    category: Category.milk,
    description:
        'Susu cokelat adalah susu rasa cokelat manis. Minuman tersebut terbuat dari campuran sirup cokelat (atau bubuk cokelat) dengan susu segar',
  ),
  Menu(
    name: 'Strawberry milk',
    imageAsset: 'assets/milk-strawberry.jpg',
    price: 20000,
    isBestSelling: false,
    category: Category.milk,
    description:
        'Susu stroberi adalah susu dengan stoberi. Minuman tersebut terbuat dari campuran sirup stroberi dengan susu segar',
  ),
  Menu(
    name: 'Blueberry milkshake',
    imageAsset: 'assets/milkshake-blueberry.jpg',
    price: 28000,
    isBestSelling: false,
    category: Category.milk,
    description:
        'Susu kocok blueberry adalah minuman dingin dari campuran susu, es krim, dan jus buah blueberry yang dikocok hingga berbusa. Selain dikocok dengan blender, susu kocok bisa dibuat dengan memakai gelas pengocok bertutup',
  ),
  Menu(
    name: 'Choco Milkshake',
    imageAsset: 'assets/milkshake-choco.jpg',
    price: 28000,
    isBestSelling: false,
    category: Category.milk,
    description:
        'Susu kocok coklat adalah minuman dingin dari campuran susu, es krim, dan sirup cokelat (atau bubuk cokelat) yang dikocok hingga berbusa. Selain dikocok dengan blender, susu kocok bisa dibuat dengan memakai gelas pengocok bertutup',
  ),
  Menu(
    name: 'Strawbery milkshake',
    imageAsset: 'assets/milkshake-strawberry.jpg',
    price: 28000,
    isBestSelling: false,
    category: Category.milk,
    description:
        'Susu kocok stroberi adalah minuman dingin dari campuran susu, es krim, dan jus buah stroberi yang dikocok hingga berbusa. Selain dikocok dengan blender, susu kocok bisa dibuat dengan memakai gelas pengocok bertutup',
  ),
];

final juices = [
  Menu(
    name: 'Orange Juice',
    imageAsset: 'assets/juice-orange.jpg',
    price: 12000,
    isBestSelling: false,
    category: Category.juice,
    description:
        'Jus jeruk adalah minuman yang berasal dari sari buah jeruk yang telah diperas.',
  ),
  Menu(
    name: 'Lime Juice',
    imageAsset: 'assets/juice-lime.jpg',
    price: 12000,
    isBestSelling: false,
    category: Category.juice,
    description:
        'Jus jerus nipis merupakan minuman yang berasal dari sari buah jeruk nipis, dengan rasa asam segar.',
  ),
  Menu(
    name: 'Pinaple Juice',
    imageAsset: 'assets/juice-pinaple.jpg',
    price: 15000,
    isBestSelling: false,
    category: Category.juice,
    description:
        'Jus nanas adalah minuman yang terbuat dari buah nanas yang telah dihaluskan dengan blender.',
  ),
  Menu(
    name: 'Melon Juice',
    imageAsset: 'assets/juice-melon.jpg',
    price: 15000,
    isBestSelling: false,
    category: Category.juice,
    description:
        'Jus melon adalah minuman yang terbuat dari buah melon yang telah dihaluskan dengan blender.',
  ),
];
