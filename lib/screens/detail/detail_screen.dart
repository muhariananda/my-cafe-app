import 'package:flutter/material.dart';
import 'package:my_caffe_app/responsive.dart';

import '../../models/models.dart';
import 'components/components.dart';

class DetailScreen extends StatelessWidget {
  final Menu menu;

  const DetailScreen({
    Key? key,
    required this.menu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: DetailMobileView(menu: menu),
      tablet: DetailWebView(menu: menu),
      web: DetailWebView(menu: menu),
    );
  }
}
