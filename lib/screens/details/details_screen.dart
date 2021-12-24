
import 'package:flutter/material.dart';
import 'package:flutter_design_ep3/screens/details/components/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final String title,country,image;
  final int price;
  const DetailsScreen({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsBody(
        title: title,
        country: country,
        price: price,
        image: image,
      ),
    );
  }
}
