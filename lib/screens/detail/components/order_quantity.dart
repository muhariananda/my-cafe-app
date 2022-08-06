import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/models.dart';

class OrderQuantity extends StatefulWidget {
  final Menu menu;
  final Function(int count) onPressed;

  const OrderQuantity({
    Key? key,
    required this.menu,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<OrderQuantity> createState() => _OrderQuantityState();
}

class _OrderQuantityState extends State<OrderQuantity> {
  var count = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            if (count > 1) {
              setState(() {
                --count;
              });
              widget.onPressed(count);
            }
          },
          icon: const Icon(
            Icons.remove_circle_rounded,
            color: Colors.black26,
          ),
        ),
        Text(
          count.toString(),
          style: GoogleFonts.poppins(
            color: Colors.black87,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              ++count;
            });
            widget.onPressed(count);
          },
          icon: const Icon(
            Icons.add_circle_rounded,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
