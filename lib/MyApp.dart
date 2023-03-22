import 'package:flutter/material.dart';
import 'BO.dart';
import 'DetailsModel.dart';
import 'DetailsScreen.dart';

class MyApp extends StatelessWidget
{
   const MyApp({super.key});

@override
Widget build(BuildContext context)
{
  return MaterialApp(
    debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
       brightness: Brightness.dark,
       colorSchemeSeed: Colors.black
      ),
      theme:ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: Colors.white,
      ),
      home: DetailsScreen(),
  );
}

}