import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomChoiceChip extends StatelessWidget {
  final String label;
  final bool selected;
  final Function(bool)? onSelected;

  const CustomChoiceChip({
    Key? key,
    required this.label,
    required this.selected,
    this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Text(
          label,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 11.0,
            color: selected ? Colors.white : Colors.black54,
          ),
        ),
      ),
      selected: selected,
      selectedColor: Colors.green,
      onSelected: onSelected,
    );
  }
}
