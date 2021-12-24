import 'package:flutter/material.dart';
import 'package:flutter_design_ep3/screens/details/details_screen.dart';
import '../../../constants.dart';


class RecommendPlants extends StatelessWidget {
  const RecommendPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children:[
            RecommendPlantCard(
              title: "Sachin",
              image: "assets/images/image_1.png",
              country: "India",
              price: 440,
              press: (){
                Future.delayed(Duration.zero,(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsScreen(
                        title: "Sachin",
                        country: "India",
                        price: 440,
                        image: "assets/images/image_1.png",
                      ))
                  );
                });
              },
            ),
            RecommendPlantCard(
              title: "Rohan",
              image: "assets/images/image_2.png",
              country: "India",
              price: 500,
              press: (){
                Future.delayed(Duration.zero,(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsScreen(
                        title: "Rohan",
                        country: "India",
                        price: 500,
                        image: "assets/images/image_2.png",
                      ))
                  );
                });
              },
            ),
            RecommendPlantCard(
              title: "Amit",
              image: "assets/images/image_3.png",
              country: "India",
              price: 100,
              press: (){
                Future.delayed(Duration.zero,(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsScreen(
                        title: "Amit",
                        country: "India",
                        price: 100,
                        image: "assets/images/image_3.png",
                      ))
                  );
                });
              },
            ),
          ]
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {

  final String image,title,country;
  final int price;
  final Function press;

  const RecommendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.only(
          left: cDefaultPadding,
          top: cDefaultPadding /2,
          bottom: cDefaultPadding * 2.5,
        ),
        width: size.width*0.4,
        child: Column(
            children:[
              Image.asset(image),
              GestureDetector(
                onTap: (){press();},
                child: Container(
                  padding: EdgeInsets.all(cDefaultPadding / 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 50,
                        color: cPrimaryColor.withOpacity(0.23),
                      ),
                    ],
                  ),
                  child: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "$title\n".toUpperCase(),
                                  style: Theme.of(context).textTheme.button,
                                ),
                                TextSpan(
                                  text: "$country".toUpperCase(),
                                  style: TextStyle(
                                    color: cPrimaryColor.withOpacity(0.5),
                                  ),
                                ),
                              ]
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$$price',
                          style: Theme.of(context).textTheme.button!.copyWith(color: cPrimaryColor),
                        )
                      ]
                  ),
                ),
              )
            ]
        )
    );
  }
}

