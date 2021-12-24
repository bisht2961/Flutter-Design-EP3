import 'package:flutter/material.dart';
import 'package:flutter_design_ep3/components/my_bottom_navbar.dart';
import 'package:flutter_design_ep3/constants.dart';
import 'package:flutter_design_ep3/screens/home/components/home_screen_body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const HomeScreenBody(),
      bottomNavigationBar:MyBottomNavBar(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      backgroundColor: cPrimaryColor,
      elevation: 0.0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: (){},
      ),
    );
  }
}
