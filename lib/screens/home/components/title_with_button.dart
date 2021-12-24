import 'package:flutter/material.dart';
import '../../../constants.dart';


class TitleWithButton extends StatelessWidget {
  final String text;
  final Function onPress;
  const TitleWithButton({Key? key,required this.text, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: cDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: text,),
          Spacer(),
          TextButton(
            style: TextButton.styleFrom(
                backgroundColor: cPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )
            ),
            onPressed: onPress(),
            child: Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  final String text;
  const TitleWithCustomUnderline({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: cDefaultPadding/4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: cDefaultPadding/4),
              height:7,
              color: cPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}

