import 'dart:math';

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  ProductPage({
    super.key,
    required this.title,
    required this.imageLink,
    required this.productBrandName,
  });

  var title;
  var imageLink;
  var productBrandName;

  var randomNumber = Random();

  List youMayLikeImageLink = [
    'assets/product_ (1).png',
    'assets/product_ (2).png',
    'assets/product_ (3).png',
    'assets/product_ (4).png',
    'assets/product_ (5).png',
  ];

  List youMayLikeBrandName = [
    'SonicHorizon',
    'TimeBeat',
    'RhythmSync',
    'AudioChrono',
    'SonicHorizon',
  ];

  List youMayLikeTitle = [
    'EarPods',
    'TempoElite',
    'ChronoCraft',
    'HorizonSync',
    'EonElegance',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: const [
          Icon(
            Icons.share,
            size: 24,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade300,
              child: Image(
                image: AssetImage(
                  imageLink.toString(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropdownMenu(
                          label: const Text('Size'),
                          trailingIcon: const Icon(Icons.arrow_drop_down),
                          dropdownMenuEntries: [
                            DropdownMenuEntry(value: () {}, label: 'Small'),
                            DropdownMenuEntry(value: () {}, label: 'Medium'),
                            DropdownMenuEntry(value: () {}, label: 'Large'),
                          ],
                        ),
                        DropdownMenu(
                          label: const Text('Color'),
                          trailingIcon: const Icon(Icons.arrow_drop_down),
                          dropdownMenuEntries: [
                            DropdownMenuEntry(value: () {}, label: 'Red'),
                            DropdownMenuEntry(value: () {}, label: 'Black'),
                            DropdownMenuEntry(value: () {}, label: 'Orange'),
                          ],
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          child: const Icon(Icons.favorite_outline),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title.toString(),
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'by ${productBrandName}',
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff9B9B9B),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              for (var i = 0; i < 5; i++)
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFFBA49),
                                ),
                              Text(
                                '(${randomNumber.nextInt(100).toString()})',
                                style: const TextStyle(
                                  color: Color(0xff9B9B9B),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('\$${randomNumber.nextInt(100).toString()}',
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown',
                    style: TextStyle(
                      color: Color(0xff222222),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        'Add To Cart',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'You may also like',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '5 Items',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff9b9b9b),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        5,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductPage(
                                      title: youMayLikeTitle[index],
                                      imageLink: youMayLikeImageLink[index],
                                      productBrandName:
                                          youMayLikeBrandName[index],
                                    ),
                                  ),
                                );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                    ),
                                    child: Stack(
                                      children: [
                                        Image(
                                          height: 150,
                                          image: AssetImage(
                                              youMayLikeImageLink[index]),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 7, vertical: 5),
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Text(
                                              '-${randomNumber.nextInt(50)}%',
                                              style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      for (var i = 0; i < 5; i++)
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xffFFBA49),
                                        ),
                                      Text(
                                        '(${randomNumber.nextInt(50)})',
                                        style: const TextStyle(
                                          color: Color(0xff9B9B9B),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    productBrandName[index],
                                    style: const TextStyle(
                                      color: Color(0xff9B9B9B),
                                    ),
                                  ),
                                  Text(
                                    youMayLikeTitle[index],
                                    style: const TextStyle(
                                      color: Color(0xff222222),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '${randomNumber.nextInt(15) + 21}\$',
                                        style: const TextStyle(
                                            color: Color(0xff9B9B9B),
                                            fontSize: 16,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        '  ${randomNumber.nextInt(15) + 5}\$',
                                        style: const TextStyle(
                                          color: Color(0xffDB3022),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 55,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
