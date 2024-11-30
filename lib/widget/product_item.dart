import 'package:flutter/material.dart';
import 'package:propertyapp/widget/icon_info.dart';

class ProductItem extends StatelessWidget {
  final String images;
  final String title;
  final String address;
  final String beds;
  final String baths;
  final String garage;

  const ProductItem(
      {required this.images,
      required this.title,
      required this.address,
      required this.beds,
      required this.baths,
      required this.garage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.grey[900]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10),
            ),
            child: Image.asset(
              images,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  address,
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconInfo(icon: Icons.bed, label: "$beds Beds"),
                    SizedBox(width: 10),
                    IconInfo(icon: Icons.bathroom, label: "$baths Baths"),
                    SizedBox(width: 10),
                    IconInfo(
                        icon: Icons.directions_car, label: "$garage Garage"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NearbyPropertyCard extends StatelessWidget {
  final String image;
  final String title;
  final String address;
  final int beds;
  final int baths;
  final int garages;

  const NearbyPropertyCard({
    required this.image,
    required this.title,
    required this.address,
    required this.beds,
    required this.baths,
    required this.garages,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[100],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child:
                Image.asset(image, height: 120, width: 120, fit: BoxFit.cover),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                address,
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  IconInfo(icon: Icons.bed, label: "$beds Beds"),
                  SizedBox(width: 8),
                  IconInfo(icon: Icons.bathtub, label: "$baths Baths"),
                  SizedBox(width: 8),
                  IconInfo(
                      icon: Icons.directions_car, label: "$garages Garage"),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
