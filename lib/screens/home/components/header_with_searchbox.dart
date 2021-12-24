import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  final Size size;
  const HeaderWithSearchBox({Key? key, required this.size,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: cDefaultPadding*2.5),
      height: size.height*0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: cDefaultPadding,
              right: cDefaultPadding,
              bottom: 36 + cDefaultPadding,
            ),
            height: size.height*0.2-27,
            decoration: BoxDecoration(
              color: cPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'Hi Sachin',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Image.asset("assets/images/logo.png"),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal:cDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal:cDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color:cPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                  children: <Widget> [
                    Expanded(
                      child:TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: cPrimaryColor.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        onChanged: (value){},
                      ),
                    ),
                    SvgPicture.asset("assets/icons/search.svg"),
                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}

