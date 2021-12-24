import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'icon_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageAndIcons extends StatelessWidget {
  final Size size;
  final String image;
  const ImageAndIcons({Key? key,required this.size, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: cDefaultPadding*3),
      child: SizedBox(
        height: size.height*0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: cDefaultPadding*3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: cDefaultPadding),
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),
                    IconCard(icon: "assets/icons/sun.svg",),
                    IconCard(icon: "assets/icons/icon_2.svg",),
                    IconCard(icon: "assets/icons/icon_3.svg",),
                    IconCard(icon: "assets/icons/icon_4.svg",),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height*0.60,
              width: size.width*0.65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 60,
                    color: cPrimaryColor.withOpacity(0.29),
                  )
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
