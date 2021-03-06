import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
            image: "assets/images/bottom_img_1.png",
            onPress: (){},
          ),
          FeaturedPlantCard(
            image: "assets/images/bottom_img_2.png",
            onPress: (){},
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  final String image;
  final Function onPress;
  const FeaturedPlantCard({Key? key,required this.image,required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress(),
      child: Container(
        margin: EdgeInsets.only(
          left: cDefaultPadding,
          top: cDefaultPadding/2,
          bottom: cDefaultPadding/2,
        ),
        width: size.width*0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
