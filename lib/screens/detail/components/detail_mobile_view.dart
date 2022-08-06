import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/models.dart';
import '../../../utils/helper.dart';
import 'components.dart';

class DetailMobileView extends StatefulWidget {
  final Menu menu;

  const DetailMobileView({
    Key? key,
    required this.menu,
  }) : super(key: key);

  @override
  State<DetailMobileView> createState() => _DetailMobileViewState();
}

class _DetailMobileViewState extends State<DetailMobileView> {
  late int total;
  var quantity = 1;
  var selectedCupSize = CupSizes.small;

  @override
  void initState() {
    total = widget.menu.price;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail menu',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 24,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: (size >= 600) ? 3 / 1.5 : 1 / 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    widget.menu.imageAsset,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                widget.menu.name,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Deskripsi',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.menu.description,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 11.0,
                  height: 2,
                  color: Colors.black45,
                ),
              ),
              const SizedBox(height: 16),
              OrderSize(
                cupSize: selectedCupSize,
                onSelected: (cupSize) {
                  setState(() {
                    selectedCupSize = cupSize;
                    updateTotalOrder();
                  });
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildBottomAppBar(),
    );
  }

  void updateTotalOrder() {
    total = getTotalOrder(
      selectedCupSize,
      widget.menu.price,
      quantity,
    );
  }

  Widget buildBottomAppBar() {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OrderQuantity(
                  menu: widget.menu,
                  onPressed: (count) {
                    setState(() {
                      quantity = count;
                      updateTotalOrder();
                    });
                  },
                ),
                OrderTotal(total: total),
              ],
            ),
            const SizedBox(height: 8),
            const OrderButton(),
          ],
        ),
      ),
    );
  }
}
