import 'package:ecommere_store_ui/pages/home_page.dart';
import 'package:ecommere_store_ui/pages/shop_page_tabs/earphones.dart';
import 'package:ecommere_store_ui/pages/shop_page_tabs/headphones.dart';
import 'package:ecommere_store_ui/pages/shop_page_tabs/watches.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xfff4f4f4),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: const Text(
            'Categories',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
          actions: const [
            Icon(
              Icons.search,
            ),
            SizedBox(
              width: 10,
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Text(
                'Watches',
                style: TextStyle(
                  color: Color(0xff222222),
                ),
              ),
              Text(
                'Headphones',
                style: TextStyle(
                  color: Color(0xff222222),
                ),
              ),
              Text(
                'Earphones',
                style: TextStyle(
                  color: Color(0xff222222),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Watches(),
            Headphones(),
            Earphones(),
          ],
        ),
      ),
    );
  }
}
