import 'package:app_for_you/utils/HexConverter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: bestSelling('images/best_selling_one.png')
      ),
    );
  }

  Widget bestSelling(
      // String itemName,
      // String itemBrand,
      // String itemPrice,
      String  itemImage
      ) {
    return    AspectRatio(
      aspectRatio: 3/1,
      child: Container(
         //color: Colors.red,
        child:  SvgPicture.asset(
            "images/finpay_card.svg",

        ),
        ),
    );

  }
}
