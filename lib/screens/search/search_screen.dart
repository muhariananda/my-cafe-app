import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_caffe_app/responsive.dart';

import '../../components/components.dart';
import '../../models/models.dart';
import '../../utils/data_dummy.dart';
import '../../utils/helper.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController controller = TextEditingController();
  List<Menu> menusBySearch = menusList;

  void updateSearchMenu(String query) {
    menusBySearch = menusList.filterBySearch(query);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pencarian',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Colors.black87,
          ),
        ),
        automaticallyImplyLeading: !Responsive.isWeb(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.green),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 8,
            ),
            child: builSearchView(context),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 24,
        ),
        child: buildGridView(),
      ),
    );
  }

  Widget builSearchView(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: (Responsive.isWeb(context)) ? 500 : double.infinity,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: TextField(
        autofocus: true,
        controller: controller,
        onChanged: (query) {
          setState(() {
            updateSearchMenu(query);
          });
        },
        maxLines: 1,
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "Pencarian 'Espresso' dsb..",
            hintStyle: TextStyle(
              color: Colors.black38,
              fontSize: 14,
            ),
            focusedBorder: InputBorder.none,
            border: InputBorder.none),
      ),
    );
  }

  Widget buildNotFoundView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.coffee_rounded,
            color: Colors.black12,
            size: 100,
          ),
          Text(
            'Tidak ada menu..',
            style: TextStyle(fontSize: 14, color: Colors.black12),
          )
        ],
      ),
    );
  }

  Widget buildGridView() {
    if (menusBySearch.isNotEmpty) {
      return Responsive(
        mobile: MenuGridView(
          gridCount: 2,
          menus: menusBySearch,
        ),
        tablet: MenuGridView(
          gridCount: 4,
          menus: menusBySearch,
        ),
        web: MenuGridView(
          gridCount: 6,
          menus: menusBySearch,
        ),
      );
    } else {
      return buildNotFoundView();
    }
  }
}
