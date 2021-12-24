import 'package:flutter/material.dart';
import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  final String title,country;
  final int price;
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: cDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
                children: [
                  TextSpan(
                    text: "$title\n",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: cTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: country,
                    style: TextStyle(
                      fontSize: 20,
                      color: cPrimaryColor,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ]
            ),
          ),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context).textTheme.headline5!.copyWith(
              color: cPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
