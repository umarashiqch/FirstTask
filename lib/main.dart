import 'package:firsttask/routs.dart';
import 'package:firsttask/screens/cart/cart_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: CartScreen.routeName,
      routes: routes,
    );
  }
}
