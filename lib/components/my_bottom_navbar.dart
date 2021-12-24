import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 2*cDefaultPadding,
        right: 2*cDefaultPadding,
        bottom: cDefaultPadding/2,
      ),
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0,-10),
                blurRadius: 35,
                color: cPrimaryColor.withOpacity(0.38)
            ),
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/flower.svg"),
            onPressed: (){},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
            onPressed: (){},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),
            onPressed: (){},
          )
        ],
      ),
    );
  }
}

