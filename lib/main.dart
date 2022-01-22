import 'package:flutter/material.dart';
import 'package:massage_app2/assignments/bike_shop.dart';

import 'package:massage_app2/massageapp.dart';
import 'package:massage_app2/whatsapp_ui/whatsapp_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BikeShop(),
    );
  }
}
