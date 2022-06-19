import 'package:flutter/material.dart';
import '../colors/colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: colorGrey),
        ),
        title: const Text(
          'Your Cart',
          style: TextStyle(color: colorText),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Center(
        child: Image.asset(
          'images/empty_box.png',
          width: 250,
          height: 250,
        ),
      ),
    );
  }
}
