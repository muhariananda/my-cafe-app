import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_caffe_app/utils/helper.dart';

import '../../../models/models.dart';
import 'best_selling_card.dart';

class BestSellingListView extends StatelessWidget {
  final List<Menu> menus;

  const BestSellingListView({
    Key? key,
    required this.menus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bestSellingMenues = menus.filterByBestSelling();

    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Kesukaan semua orang',
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 160,
            child: Container(
              color: Colors.transparent,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: bestSellingMenues.length,
                itemBuilder: (context, index) {
                  final menu = bestSellingMenues[index];
                  return BestSellingCard(menu: menu);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 16);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
