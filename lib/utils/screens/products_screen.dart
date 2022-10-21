import 'package:app_for_you/utils/HexConverter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(244, 243, 243, 1)),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black87,
                        size: 20,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "PRODUCTS",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        fontFamily:'montserrat' ,
                        color: '#392E63'.toColor()),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    child: Container(
                        child: CarouselSlider(
                          options: CarouselOptions(
                            aspectRatio: 16 / 9,
                            enlargeCenterPage: true,
                            viewportFraction: 1,
                            scrollDirection: Axis.horizontal,
                            autoPlay: true,
                          ),
                          items: [bannerCard()],
                        )),
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
            Container(
              color: '#F7F7F7'.toColor(),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Categories",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily:'montserrat' ,
                              fontWeight: FontWeight.normal,
                              color: '#392E63'.toColor()),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily:'montserrat' ,
                              fontWeight: FontWeight.normal,
                              color: '#CB1B93'.toColor()),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        categories('Men', Icons.person),
                        categories('women',Icons.notifications),
                        categories('Devices',Icons.start),
                        categories('Gadgets',Icons.snowshoeing),
                        categories("Gaming",Icons.shop),
                        categories('Men',Icons.person),
                        categories('Women',Icons.person),


                      ],
                    ),
                  )
                  //
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: '#F7F7F7'.toColor(),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Featured Brand",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily:'montserrat' ,
                              fontWeight: FontWeight.normal,
                              color: '#392E63'.toColor()),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily:'montserrat' ,
                              fontWeight: FontWeight.normal,
                              color: '#CB1B93'.toColor()),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        brands('Men', Icons.shop_sharp),
                        brands('women', Icons.more_horiz),
                        brands('Devices', Icons.more_horiz),
                        brands('Gadgets', Icons.more_horiz),
                        brands("Gaming", Icons.more_horiz),
                        brands('Men', Icons.more_horiz),
                        brands('Women', Icons.more_horiz),


                      ],
                    ),
                  )
                  //
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: '#F7F7F7'.toColor(),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Best Selling",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily:'montserrat' ,
                              fontWeight: FontWeight.normal,
                              color: '#392E63'.toColor()),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily:'montserrat' ,
                              fontWeight: FontWeight.normal,
                              color: '#CB1B93'.toColor()),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        bestSelling( 'images/best_selling_one.png'),
                        bestSelling( 'images/best_selling_two.png'),
                        bestSelling( 'images/best_selling_three.png'),
                        bestSelling( 'images/best_selling_one.png'),
                        bestSelling( 'images/best_selling_two.png'),
                        bestSelling( 'images/best_selling_three.png'),
                        bestSelling( 'images/best_selling_one.png'),
                        bestSelling( 'images/best_selling_two.png'),
                      ],
                    ),
                  )
                  //
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bannerCard() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: ClipRect(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget categories(String name, IconData icon) {
    return   Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 8,
                  spreadRadius: 8
              ),

            ],
          ),
          margin: EdgeInsets.only(left: 10, right: 5,top: 10),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(
              icon,
              size: 25,

            ),
          ),
        ),
        SizedBox(height: 5,),
        Text(
          name,
          style: TextStyle(
              fontSize: 12,
              fontFamily:'montserrat' ,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(height: 5,)
      ],
    );
  }

  Widget brands(String name, IconData icon) {
    return   Column(
      children: [
        Container(

          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 5,
                  spreadRadius: 5
              ),

            ],
          ),
          margin: EdgeInsets.only(left: 10, right: 5,top: 10,bottom: 10),
          child: Padding(
              padding: const EdgeInsets.all(15),
              child:Row(
                children: [
                  Icon(
                    icon,
                    size: 25,

                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [

                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 10,
                            // fontFamily:'montserrat' ,
                            fontWeight: FontWeight.bold,
                            color: '#000000'.toColor()),
                      ),
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 9,
                            fontFamily:'montserrat' ,
                            fontWeight: FontWeight.normal,
                            color: '#392E63'.toColor()),
                      ),
                      // SizedBox(height: 5,)
                    ],
                  )
                ],
              )
          ),
        ),

      ],
    );
  }

  Widget bestSelling(
      // String itemName,
      // String itemBrand,
      // String itemPrice,
      String  itemImage
      ) {
    return   Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(

          //width: 120,
          // height: 300,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 5,
                    spreadRadius: 5
                ),

              ],
            ),
            margin: EdgeInsets.only(left: 10, right: 5,top: 10,bottom: 10),

            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(

                  children: [
                    SizedBox(height: 2,),
                    Image.asset(
                      itemImage,
                      fit: BoxFit.scaleDown,
                      width: 120,
                      // height: 180,
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'Beoplay Speaker',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'Tag Heuster',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                        fontSize: 12
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      '₹ 2700',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: '#CB1B93'.toColor(),
                          fontSize: 15
                      ),
                    ),
                    SizedBox(height: 5,),
                  ],
                )







              ],
            )
        ),


      ],
    );
  }

}
