import 'package:app_for_you/utils/HexConverter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Container(
              padding: EdgeInsets.all(5),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                shape: BoxShape.rectangle,
                // boxShadow: [
                //   BoxShadow(
                //       color: Colors.grey.shade200,
                //       blurRadius: 5,
                //       spreadRadius: 5
                //   ),

                //],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: SvgPicture.asset(
                  'images/finpay_card.svg',
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
              )),
        ), //card layout
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: '#EFEFEF'.toColor(),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                    'dsfhik'
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
