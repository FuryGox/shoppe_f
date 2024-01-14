import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoppe_f/constants.dart';
import 'package:shoppe_f/screen/home/list_item.dart';
import 'package:shoppe_f/data.dart';
import 'package:shoppe_f/main.dart';
import 'package:shoppe_f/screen/Product/product.dart';
import 'package:shoppe_f/screen/Product/product_main.dart';

class HomePage extends StatefulWidget {
  @override
  home_screen createState() => home_screen();
}


class home_screen extends  State<HomePage> {

  int selectedIndex = 0;
  List<product_card> dataCard = data().itemProductList.map((product){
    return product_card(
      id: product.id,
      imageUrl: product.image[0],
      title: product.name,
      price: product.price.toString(),
      rating: product.ratting.toString(),
    );
  }).toList();
  List<category_base> category = data().category;

  List<Adbanner_content> adbanner_slider = data().getAdbanner().map((e){
    return Adbanner_content(addata: e,);
  }).toList();

  void changePage(index){
    switch (index){
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/receipt');
        break;
      case 2:
        Navigator.pushNamed(context, '/favorite');
        break;
    }
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
              margin: EdgeInsets.only(top: 5),
              height: 75,
              decoration: BoxDecoration(
                border: horizontal_bar,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemExtent: 100,
                            itemCount: category.length,
                            itemBuilder: (context, index)  => category_wigget(category: category[index])
                          ),
                        ),
                  ),
                ],
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
                              builder: (context) => product_item(item: data().get_product_by_id(dataCard[index].id)),
                          ),
                        )
                      } ,
                    ),
                )
            ),

          ],
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