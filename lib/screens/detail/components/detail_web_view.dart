import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_caffe_app/responsive.dart';

import '../../../models/models.dart';
import '../../../utils/helper.dart';
import 'components.dart';

class DetailWebView extends StatefulWidget {
  final Menu menu;

  const DetailWebView({Key? key, required this.menu}) : super(key: key);

  @override
  State<DetailWebView> createState() => _DetailWebViewState();
}

class _DetailWebViewState extends State<DetailWebView> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          (Responsive.isTablet(context) ? 'Detail menu' : 'MyCafe'),
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.green),
        automaticallyImplyLeading: (Responsive.isTablet(context)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    widget.menu.imageAsset,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.menu.name,
                      style: GoogleFonts.poppins(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Deskripsi',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.menu.description,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 2,
                        color: Colors.black45,
                      ),
                    ),
                    const SizedBox(height: 24),
                    OrderSize(
                      cupSize: selectedCupSize,
                      onSelected: (cupSize) {
                        setState(() {
                          selectedCupSize = cupSize;
                          updateTotalOrder();
                        });
                      },
                    ),
                    const SizedBox(height: 24),
                    buildTotalOrderView()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void updateTotalOrder() {
    total = getTotalOrder(
      selectedCupSize,
      widget.menu.price,
      quantity,
    );
  }

  Widget buildTotalOrderView() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black26,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          const SizedBox(height: 16),
          const OrderButton(),
        ],
      ),
    );
  }
}
