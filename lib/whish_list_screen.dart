import 'package:flutter/material.dart';
import 'package:propertyapp/widget/product_item.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wishlist",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Center(
                    child: ProductItem(
                        images: "assets/images/banglow1.jpeg",
                        title: 'CRAFTSMAN',
                        address: '250N Block 8 Clifton',
                        beds: '4',
                        baths: '4',
                        garage: '1'),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ProductItem(
                  images: "assets/images/banglow2.jpeg",
                  title: 'CRAFTSMAN',
                  address: '250N Block 8 Clifton',
                  beds: '4',
                  baths: '4',
                  garage: '1'),
            ],
          ),
        ),
      ),
    );
  }
}
