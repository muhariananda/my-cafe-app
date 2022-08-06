import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_caffe_app/responsive.dart';
import 'package:my_caffe_app/utils/helper.dart';

import '../../../components/components.dart';
import '../../../models/models.dart';

class MenuListByCategory extends StatefulWidget {
  final List<Menu> menus;

  const MenuListByCategory({
    Key? key,
    required this.menus,
  }) : super(key: key);

  @override
  State<MenuListByCategory> createState() => _MenuListByCategoryState();
}

class _MenuListByCategoryState extends State<MenuListByCategory> {
  Category category = Category.coffee;
  late List<Menu> menusByCategory;

  @override
  void initState() {
    menusByCategory = widget.menus.filterByCategory(category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pilihan menu',
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          buildChoiceChip(),
          const SizedBox(height: 16),
          Responsive(
            mobile: buildGridView(),
            tablet: buildGridView(4),
            web: buildGridView(6),
          ),
        ],
      ),
    );
  }

  void updateMenus() {
    menusByCategory.clear();
    menusByCategory = widget.menus.filterByCategory(category);
  }

  Widget buildChoiceChip() {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: Category.values.length,
        itemBuilder: (context, index) {
          final mCategory = Category.values[index];
          return CustomChoiceChip(
            label: getLabelByCategory(mCategory),
            selected: category == mCategory,
            onSelected: (_) {
              setState(() {
                category = mCategory;
                updateMenus();
              });
            },
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 12);
        },
      ),
    );
  }

  Widget buildGridView([int gridCount = 2]) {
    return MenuGridView(
      gridCount: gridCount,
      menus: menusByCategory,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
