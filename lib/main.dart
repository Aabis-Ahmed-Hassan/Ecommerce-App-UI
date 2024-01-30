import 'package:ecommere_store_ui/pages/bag.dart';
import 'package:ecommere_store_ui/pages/favourite_page.dart';
import 'package:ecommere_store_ui/pages/home_page.dart';
import 'package:ecommere_store_ui/pages/profile_page.dart';
import 'package:ecommere_store_ui/pages/shop_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var currentItem = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: [
          HomePage(),
          ShopPage(),
          Bag(),
          FavourtePage(),
          Profile(),
        ][currentItem],
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentItem,
          onDestinationSelected: (value) {
            currentItem = value;
            setState(() {});
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.shopping_cart), label: 'Shop'),
            NavigationDestination(icon: Icon(Icons.shopping_bag), label: 'Bag'),
            NavigationDestination(
                icon: Icon(Icons.favorite_outline), label: 'Favourites'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// import 'pages/home_page.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         title: 'Pdf Package Flutter',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           appBarTheme: const AppBarTheme(
//             titleTextStyle: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           elevatedButtonTheme: ElevatedButtonThemeData(
//             style: ElevatedButton.styleFrom(
//               minimumSize: const Size(300, 60),
//               textStyle: const TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(50),
//               ),
//             ),
//           ),
//         ),
//         home: HomePage(),
//       );
// }
