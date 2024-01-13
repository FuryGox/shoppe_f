import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:like_button/like_button.dart';
import 'package:provider/provider.dart';
import 'package:shoppe_f/data.dart';
import 'package:shoppe_f/main.dart';
import 'package:shoppe_f/screen/Product/product.dart';
import 'package:shoppe_f/screen/home/home_screen.dart';

import '../../constants.dart';

class product_item extends StatefulWidget{
  final Product item;
  
  product_item({
    required this.item
  });

  @override
  Product_main createState() => Product_main(item: item);
}

class Product_main extends State<product_item>{

  final Product item;
  Product_main({
    required this.item
  });
  
  int quantity = 1;



  void changePage(index){
    switch (index){
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        break;
      case 1:
        Navigator.pop;
        break;
    };
  }

  @override
  Widget build(BuildContext context) {
    bool like = data().getFavorite_state(item.id);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: MyAppBar_Page(),
      body: Column(
        children: [
          Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CarouselSlider(
                        items: item.image.map((path) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                child: Image.asset(path, fit: BoxFit.cover),
                                );
                            },
                          );
                        }).toList(),
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
                    ),
                  ),
                  Container(
                    child: Text(
                      item.name,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    (item.price.toString() + " VND"),
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w200,
                      color: kTheme
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(item.ratting.toString()),
                        InkWell(
                          child: SvgPicture.asset('assets/icon/star.svg',width: 20,height: 20,),
                          onTap: (){
                            print('1');
                          },
                        ),
                        InkWell(
                          child: SvgPicture.asset('assets/icon/star.svg',width: 20,height: 20,),
                          onTap: (){
                            print('2');
                          },
                        ),
                        InkWell(
                          child: SvgPicture.asset('assets/icon/star.svg',width: 20,height: 20,),
                          onTap: (){
                            print('3');
                          },
                        ),
                        InkWell(
                          child: SvgPicture.asset('assets/icon/star.svg',width: 20,height: 20,),
                          onTap: (){
                            print('4');
                          },
                        ),
                        InkWell(
                          child: SvgPicture.asset('assets/icon/star.svg',width: 20,height: 20,),
                          onTap: (){
                            print('5');
                          },
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        InkWell(
                              onTap: (){
                                Provider.of<data>(context, listen: false).addToFavorite(item);
                              },
                              child: Container(
                                child: Text(
                                    'Add to favorite',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                    ),
                                ),
                              ),
                        ),
                      ],
                    ),
                  ),



                  Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                          item.detail,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),

                    ),
                ],
              ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        width: 400,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 7,
              child: Container(
                width: 300,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          if (quantity > 1){
                            setState(() {
                              quantity == quantity--;
                            });
                          }
                        },
                        child: Container(
                          color: Colors.deepOrange,
                          child: Center(
                            child: SvgPicture.asset('assets/icon/minus.svg',width: 20,height: 20,color: Colors.white,),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          width: 100,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                          ),
                          child: Text(
                            quantity.toString(),
                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),
                          )
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            quantity == quantity++;
                          });
                        },
                        child: Container(
                          height: 50,
                          color: Colors.deepOrange,
                          child: Center(
                            child: SvgPicture.asset('assets/icon/plus.svg',width: 20,height: 20,color: Colors.white,),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),


            Expanded(
              flex: 4,
              child: GestureDetector(
                onTap: (){
                  Provider.of<data>(context, listen: false).addItemToCart(item.id, quantity);
                },
                child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1F8639)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'Add to cart',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                              shadows: null,
                            ),
                          ),
                          SvgPicture.asset('assets/icon/cart-minus.svg', height: 20 ,width: 20, color: Colors.white,)
                        ],
                      ),
                    )

                ),
              ),
            ),

          ],
        ),
      )

    );

  }

}