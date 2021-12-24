import 'package:flutter/material.dart';
import 'package:flutter_design_ep3/constants.dart';
import 'package:flutter_design_ep3/screens/details/components/image_and_icons.dart';
import 'package:flutter_design_ep3/screens/details/components/title_and_price.dart';

class DetailsBody extends StatelessWidget {
  final String title,country,image;
  final int price;
  const DetailsBody({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(
              size: size,
              image:image,
          ),
          TitleAndPrice(
            title: title,
            country: country,
            price: price,
          ),
          SizedBox(height: cDefaultPadding,),
          Row(
            children: [
              SizedBox(
                width: size.width/2,
                height: 84,
                child: TextButton(
                  onPressed: (){},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: cPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){},
                  child: Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

