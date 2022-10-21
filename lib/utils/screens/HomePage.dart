import 'package:app_for_you/utils/HexConverter.dart';
import 'package:app_for_you/utils/screens/cart.dat.dart';
import 'package:app_for_you/utils/screens/products_screen.dart';
import 'package:app_for_you/utils/screens/wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  int selectedItemIndex=0;
  List<Widget> screens= [
    Products(),
    Cart(),
    Wallet()
  ];

  void changeTab(int index) {
    setState(() => selectedItemIndex = index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black45,
          ),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: navigationBar(),
      body: screens[selectedItemIndex]
    );
  }

  Widget promoCard() {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey),
    );
  }


  Widget buildIndicator(bool isSelected) {
    return Container(
      height: isSelected ? 12 : 8,
      width: isSelected ? 12 : 8,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? '#392E63'.toColor() : Colors.grey),
    );
  }

  Widget buildNavigationBarItem(IconData icon, bool isActive, String name, int index)
  {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedItemIndex = index;
          changeTab(index);
        });
      },
      child: Container(

          child:
          (index==selectedItemIndex)? Container(
            height: 60,
            width: MediaQuery.of(context).size.width/3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    name,
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily:'montserrat' ,
                        fontWeight: FontWeight.bold,
                        color: '#CB1B93'.toColor())
                ),
                SizedBox(height: 3,),
                Icon(
                    Icons.circle,
                    size: 8,
                    color: '#CB1B93'.toColor()
                )
              ],
            ),
          ): Container(
            height: 60,
            width: MediaQuery.of(context).size.width/3,
            decoration: BoxDecoration(
                color: Colors.white
            ),
            child: Icon(icon),
          )
      ),
    );
  }

  Row navigationBar()
  {
    return Row(
      children: [
        buildNavigationBarItem(Icons.home, true,'HOME',0),
        buildNavigationBarItem(Icons.shopping_cart, false,'CART',1),
        buildNavigationBarItem(Icons.wallet_travel, false,'WALLET',2),

      ],
    );
  }
}