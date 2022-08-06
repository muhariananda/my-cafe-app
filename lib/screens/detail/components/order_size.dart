import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_caffe_app/utils/helper.dart';

import '../../../components/components.dart';
import '../../../models/models.dart';

class OrderSize extends StatelessWidget {
  final CupSizes cupSize;
  final Function(CupSizes) onSelected;

  const OrderSize({
    Key? key,
    required this.cupSize,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pilih ukuran',
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 40,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: CupSizes.values.length,
            itemBuilder: (context, index) {
              final size = CupSizes.values[index];
              return CustomChoiceChip(
                label: getLabelBySizes(size),
                selected: cupSize == size,
                onSelected: (_) {
                  onSelected(size);
                },
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 12);
            },
          ),
        ),
      ],
    );
  }
}
