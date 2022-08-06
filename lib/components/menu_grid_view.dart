import 'package:flutter/material.dart';

import '../models/models.dart';
import 'menu_tile.dart';

class MenuGridView extends StatelessWidget {
  final int gridCount;
  final List<Menu> menus;
  final ScrollPhysics? physics;

  const MenuGridView({
    Key? key,
    required this.gridCount,
    required this.menus,
    this.physics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      physics: physics,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: (1 / 1),
        crossAxisCount: gridCount,
        crossAxisSpacing: 24.0,
        mainAxisSpacing: 8,
      ),
      itemCount: menus.length,
      itemBuilder: (context, index) {
        final menu = menus[index];
        return MenuTile(menu: menu);
      },
    );
  }
}
