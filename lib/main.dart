import 'package:flutter/material.dart';
import 'ecommerce.dart';
import 'home.dart';

void main(){
  runApp(ContUnderstand());
}
class ContUnderstand extends StatelessWidget {
  const ContUnderstand({super.key});

  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      //theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      debugShowCheckedModeBanner: false,
       home: EcommerceKpi(),
    );
  }
}
