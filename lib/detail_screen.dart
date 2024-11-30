import 'package:flutter/material.dart';
import 'package:propertyapp/whish_list_screen.dart';
import 'package:propertyapp/widget/product_item.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final List<String> galleryImages = [
    'assets/images/drawing.png',
    'assets/images/sofaroom.jpg',
    'assets/images/bedroom1.jpg',
    'assets/images/mirror.jpg',
    // Add more URLs
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Details",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    // size: 15,
                    color: Colors.grey,
                  ))
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Center(
                child: ProductItem(
                    images: 'assets/images/pics.png',
                    title: 'CRAFTSMAN',
                    address: '250N block 8 Clifton',
                    beds: '4',
                    baths: '4',
                    garage: '1'),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/png.jpeg')),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Muhammad Umar',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text("Owner Craftsman House"),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    "Call",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                    "Spacious and well-lit bedrooms designed for comfort.\nMaster bedroom includes an en-suite bathroom\nIncludes at least one en-suite bathroom for privacy\nSingle-car garage with ample space"),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Gallery",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: galleryImages.map((image) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(image, width: 80, fit: BoxFit.cover),
                    ),
                  );
                }).toList(),
              )),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('price',
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "5990000",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WishlistScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('BUY NOW'),
              ),
            ],
          )
        ]),
      ),
    ));
  }
}
