import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoppe_f/constants.dart';
import 'package:shoppe_f/screen/home/list_item.dart';

import 'package:shoppe_f/main.dart';
import 'package:shoppe_f/screen/Product/product.dart';
import 'package:shoppe_f/screen/Product/product_main.dart';

class HomePage extends StatefulWidget {
  @override
  home_screen createState() => home_screen();
}
List<Adbanner_data> adbanner_data = data_template().ad_data;
class home_screen extends  State<HomePage> {

  int selectedIndex = 0;
  List<product_card> dataCard = data_template().itemCardList;

  List<Adbanner_content> adbanner_slider = adbanner_data.map((e){
    return Adbanner_content(data: e,);
  }).toList();

  void changePage(index){
    switch (index){
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/home');
        break;  
    };
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: MyAppBar_Home() ,
      body: Column(
          children: [
            Center(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 30),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: adbanner_slider,
              ),
            ),

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
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: dataCard.length,
                    itemBuilder: (context, index) => ProductContainer(
                      product: dataCard[index],
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => product_item(item: data_template().get_product_by_id(dataCard[index].id)),
                          ),
                        )
                      } ,
                    ),
                )
            ),

          ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('HangA'),
            ),
            ListTile(
              title: Text('HangB'),
            ),
          ],
        ),
      ),

      bottomNavigationBar: MyBottomNavBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
            changePage(index);
          });
        },
      ),

    );
  }
}