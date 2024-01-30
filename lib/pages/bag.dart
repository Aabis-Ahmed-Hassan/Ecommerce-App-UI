import 'package:flutter/material.dart';

class Bag extends StatelessWidget {
  const Bag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      appBar: AppBar(
        title: const Text(
          'My Bag',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.search,
            color: Color(0xff222222),
          ),
          SizedBox(
            width: 15,
          ),
        ],
        backgroundColor: const Color(0xfff9f9f9),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
          child: Column(
            children: [
              MyRow(
                imageId: 15,
                title: 'Simple Earphones',
                color: 'Black',
                size: 'Small',
                productQuantity: 3,
                price: 32,
              ),
              MyRow(
                imageId: 6,
                title: 'Android Watch',
                color: 'Black',
                size: 'Large',
                productQuantity: 1,
                price: 28,
              ),
              MyRow(
                imageId: 11,
                title: 'Headphones',
                color: 'Red',
                size: 'Small',
                productQuantity: 5,
                price: 40,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Amount: ',
                    style: TextStyle(
                      color: Color(0xff9B9B9B),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '100',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.red,
                        blurRadius: 10,
                        spreadRadius: 1,
                      )
                    ]),
                child: const Center(
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyRow extends StatefulWidget {
  MyRow({
    super.key,
    required this.imageId,
    required this.title,
    required this.color,
    required this.size,
    required this.productQuantity,
    required this.price,
  });

  var imageId;
  var title;
  var color;
  var size;

  var productQuantity;
  var price;
  @override
  State<MyRow> createState() => _MyRowState();
}

class _MyRowState extends State<MyRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            child: Image(
              image: AssetImage(
                  'assets/product_ (${widget.imageId.toString()}).png'),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title.toString(),
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff222222),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Color: ',
                              style: TextStyle(
                                color: Color(0xff9b9b9b),
                                fontSize: 15,
                              ),
                            ),
                            TextSpan(
                              text: '${widget.color.toString()}  ',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            const TextSpan(
                              text: 'Size: ',
                              style: TextStyle(
                                color: Color(0xff9b9b9b),
                                fontSize: 15,
                              ),
                            ),
                            TextSpan(
                              text: widget.size.toString(),
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              if (widget.productQuantity != 0) {
                                widget.productQuantity--;

                                setState(() {});
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(25),
                              ),
                              height: 30,
                              width: 30,
                              child: const Center(
                                child: Icon(
                                  Icons.remove,
                                  color: Color(
                                    0xff9B9B9B,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 35,
                            child: Center(
                              child: Text(
                                widget.productQuantity.toString(),
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff222222),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              widget.productQuantity++;
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(25),
                              ),
                              height: 30,
                              width: 30,
                              child: const Center(
                                child: Icon(
                                  Icons.add,
                                  color: Color(
                                    0xff9B9B9B,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '\$${widget.price.toString()}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(
                            0xff222222,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
