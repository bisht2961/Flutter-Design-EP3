import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';

class IconCard extends StatelessWidget {
  final String icon;
  const IconCard({Key? key,required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height*0.03),
      padding: EdgeInsets.all(cDefaultPadding/2),
      height: 52,
      width: 52,
      decoration: BoxDecoration(
        color: cBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,15),
            blurRadius: 22,
            color: cPrimaryColor.withOpacity(0.22),
          ),
          BoxShadow(
            offset: Offset(-15,-15),
            blurRadius: 20,
            color: Colors.white,
          ),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}

