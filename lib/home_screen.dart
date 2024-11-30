import 'package:flutter/material.dart';
import 'package:propertyapp/detail_screen.dart';
import 'package:propertyapp/widget/filter_button.dart';
import 'package:propertyapp/widget/product_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Location",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 15),
                      ),
                      const Text(
                        "Karachi Clifton Block 8",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: EdgeInsets.all(9.0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen()));
                        },
                        icon: Icon(Icons.bookmark)),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              const Text(
                "Discover Best\nSuitable Property",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  FilterButton(label: "House", isSelected: true),
                  const SizedBox(
                    width: 20,
                  ),
                  FilterButton(label: 'Appartment', isSelected: false),
                  const SizedBox(
                    width: 20,
                  ),
                  FilterButton(label: 'Flot', isSelected: false),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Best For you",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const ProductItem(
                  images: 'assets/images/banglow1.jpeg',
                  title: 'CRAFTSMAN',
                  address: '250N Block 8 Clifton',
                  beds: '4',
                  baths: '4',
                  garage: '1'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Nearby you location",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              SizedBox(height: 20),
              NearbyPropertyCard(
                  image: 'assets/images/banglow1.jpeg',
                  title: 'RANCH HOME',
                  address: '250 N Block 8 Clifton',
                  beds: 4,
                  baths: 4,
                  garages: 1)
            ]),
          )),
        ));
  }
}
