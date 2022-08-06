import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_caffe_app/screens/screens.dart';

import '../../utils/helper.dart';
import '../../utils/data_dummy.dart';
import 'components/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menus = menusList;

    return Scaffold(
      appBar: _buildHomeAppBar(context),
      body: ListView(
        children: [
          const GreetingCard(),
          const SizedBox(height: 16.0),
          BestSellingListView(menus: menus),
          const SizedBox(height: 16.0),
          MenuListByCategory(menus: menus),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildHomeAppBar(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/user.jpg'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                greeting(),
                style: GoogleFonts.poppins(
                  fontSize: 11.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black38,
                ),
              ),
              Text(
                'Muhammad Ariananda',
                style: GoogleFonts.poppins(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              )
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.green,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const SearchScreen();
                },
              ),
            );
          },
        )
      ],
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }
}
