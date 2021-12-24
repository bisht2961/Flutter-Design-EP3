import 'package:flutter/material.dart';
import 'package:flutter_design_ep3/constants.dart';
import 'package:flutter_design_ep3/screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Shopping App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: cPrimaryColor,
        scaffoldBackgroundColor: cBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: cTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

