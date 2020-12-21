import 'package:flutter/material.dart';
import 'package:home3_app/home_screen.dart';
import 'package:home3_app/constants.dart';
import 'package:home3_app/products.dart';
class Description extends StatelessWidget {
const Description({
Key key,
@required this.product,
}) : super(key: key);

final Product product;

@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
    child: Text(
      product.description,
      style: TextStyle(height: 1.5),
    ),
  );
}
}
