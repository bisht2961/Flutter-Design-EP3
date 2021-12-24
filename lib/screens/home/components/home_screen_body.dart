import 'package:flutter/material.dart';
import 'package:flutter_design_ep3/constants.dart';
import 'package:flutter_design_ep3/screens/home/components/recommended_plants_list.dart';
import 'package:flutter_design_ep3/screens/home/components/title_with_button.dart';
import 'featured_plants_list.dart';
import 'header_with_searchbox.dart';

class HomeScreenBody extends StatelessWidget {

  const HomeScreenBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size =  MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithButton(
            text: "Recommend",
            onPress: (){},
          ),
          const RecommendPlants(),
          TitleWithButton(
            text: "Featured",
            onPress: (){},
          ),
          const FeaturedPlants(),
          SizedBox(height: cDefaultPadding,)
        ],
      ),
    );
  }
}

