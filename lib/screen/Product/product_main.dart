import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoppe_f/main.dart';
import 'package:shoppe_f/screen/Product/product.dart';
import 'package:shoppe_f/screen/home/home_screen.dart';

import '../../constants.dart';

class product_item extends StatefulWidget{
  final Product? item;
  const product_item({
    required this.item
  });

  @override
  Product_main createState() => Product_main(item: item);
}

class Product_main extends State<product_item>{
  final Product? item;
  Product_main({
    required this.item
  });

  List<Product> dataProduct = data_template().itemProductList;

  int quantity = 1;
  String star_rate_unfill = 'assets/icon/star.svg';


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
    final item = this.item;
    if (item != null){
      return Scaffold(
        appBar: MyAppBar_Page(),
        body: Column(
          children: [
            Expanded(
                child: ListView(
                  children: [
                    Image.asset(
                      item.image,
                      width: double.infinity,
                      height: 250,
                      color: Colors.grey,
                    ),
                    Text(
                      item.name,
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
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
                            flex: 99999,
                          ),
                          InkWell(
                            child: SvgPicture.asset('assets/icon/heart.svg',width: 25,height: 25,),
                            onTap: (){
                              print('Hi');
                            },
                          ),
                        ],
                      ),
                    ),



                    Container(
                      padding: EdgeInsets.only(top: 20),
                      height: 175,
                      child: Text(
                        item.detail,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
            )
          ],
        ),
        bottomNavigationBar: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            ElevatedButton(
              onPressed: () {
                if (quantity > 1){
                  setState(() {
                    quantity == quantity--;
                  });
                }
                print(quantity);
              },
              child: SvgPicture.asset('assets/icon/minus.svg',width: 20,),
            ),
            Container(
                width: 100,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 1,style: BorderStyle.solid),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: Text(
                  quantity.toString(),
                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),
                )
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  quantity == quantity++;
                });
                print(quantity);
              },
              child: SvgPicture.asset('assets/icon/plus.svg',width: 20,),
            ),
            Container(
              child: ButtonBar(
                alignment: MainAxisAlignment.center,
                buttonHeight: 50,
                children: [
                  ElevatedButton(
                      onPressed: (){},
                      child: Text('Add to Cart'))
                ],
              ),
            ),

          ],
        )

      );
    }
    else{
      return Scaffold(
        appBar: AppBar(
          title: Text('Not Found'),
        ),
        body: Center(
          child: Text('Page not found'),
        ),
      );
    }
  }

}