import 'package:flutter/material.dart';

import '../model/product.dart';
import '../colors/colors.dart';

class CardRecommended extends StatelessWidget {
  final Product product;

  const CardRecommended({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 120,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: EdgeInsets.zero,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                product.productImg,
                width: double.infinity,
                height: 80,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                product.productName,
                style: const TextStyle(
                  fontSize: 13.0,
                  color: colorGrey,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ),
    );
  }
}
