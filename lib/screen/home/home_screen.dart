import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe_f/constants.dart';
import 'package:shoppe_f/screen/home/list_item.dart';

import '../../main.dart';
import '../Product/product_main.dart';

class HomePage extends StatefulWidget {
  @override
  home_screen createState() => home_screen();
}

class home_screen extends  State<HomePage> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context){
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: MyAppBar() ,
      body: Center(
        widthFactor: deviceWidth,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(kItemContainerMargin),
              child: Text(
                      "Recommend for you !",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
              ),
            ),
            Row(
              children: [
                CustomProductContainer(
                  imageUrl: "assets/images/product1.png",
                  title: "SomethingGreat",
                  rating: "5.0",
                  price: '100k vnd',
                ),
                CustomProductContainer(
                  imageUrl: "assets/images/product1.png",
                  title: "SomethingGreat",
                  rating: "5.0",
                  price: '100k vnd',
                ),
              ],
            ),

            Row(
              children: [
                CustomProductContainer(
                  imageUrl: "assets/images/product1.png",
                  title: "SomethingGreat",
                  rating: "5.0",
                  price: '100k vnd',
                ),
                CustomProductContainer(
                  imageUrl: "assets/images/product1.png",
                  title: "SomethingGreat",
                  rating: "5.0",
                  price: '100k vnd',
                ),
              ],
            ),

            Row(
              children: [
                CustomProductContainer(
                  imageUrl: "assets/images/product1.png",
                  title: "SomethingGreat",
                  rating: "5.0",
                  price: '100k vnd',
                ),
                CustomProductContainer(
                  imageUrl: "assets/images/product1.png",
                  title: "SomethingGreat",
                  rating: "5.0",
                  price: '100k vnd',
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),

    );
  }
}