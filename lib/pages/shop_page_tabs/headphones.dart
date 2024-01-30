import 'package:flutter/material.dart';

class Headphones extends StatelessWidget {
  Headphones({super.key});

  List images = [
    'assets/product_(10).png',
    'assets/product_(11).png',
    'assets/product_(12).png',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Flat 25% Off',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'On All Headphones',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            MyRowWidget(title: 'Office Headphones', imageNumber: 10),
            MyRowWidget(title: 'Simple Headphones', imageNumber: 11),
            MyRowWidget(title: 'Imported Headphones', imageNumber: 12),
          ],
        ),
      ),
    );
  }
}

class MyRowWidget extends StatelessWidget {
  MyRowWidget({super.key, required this.title, required this.imageNumber});

  var title;
  var imageNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Image(
              height: 125,
              fit: BoxFit.fitHeight,
              image:
                  AssetImage('assets/product_ (${imageNumber.toString()}).png'),
            ),
          )
        ],
      ),
    );
  }
}
