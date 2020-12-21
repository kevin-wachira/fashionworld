import 'package:flutter/material.dart';
import 'package:home3_app/cartpage.dart';
import 'package:home3_app/products.dart';
import 'package:home3_app/constants.dart';
import 'package:home3_app/body1.dart';
import 'package:flutter_svg/svg.dart';
class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => CartPage()));

          },
        ),
        SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}