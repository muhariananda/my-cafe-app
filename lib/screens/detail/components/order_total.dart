import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderTotal extends StatelessWidget {
  final int total;

  const OrderTotal({
    Key? key,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Total',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Colors.black38,
            ),
          ),
          Text(
            'Rp.$total',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
