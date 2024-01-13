import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:shoppe_f/constants.dart';
import 'package:shoppe_f/data.dart';
import 'package:shoppe_f/main.dart';
import 'package:shoppe_f/screen/Product/product.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../Product/product_main.dart';

class cart_main extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => cart();
  
}
class cart extends State<cart_main>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backbutton(),
        title: Container(
            child: Row(
              children: [
                Text('Cart'),
                SvgPicture.asset('assets/icon/cart-minus.svg',width: 20,height: 20,color: Colors.white,)
              ],
        )),
        backgroundColor: Colors.deepOrange,
      ),
      body: Consumer<data>(
        builder: (context, value, child){
          return Column(
            children: [
              Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical ,
                    itemCount: value.cart_item_list.length,
                    itemBuilder: (context, index) {
                      return item_cart(
                        item: value.cart_item_list[index],
                        index_at: index,
                        cart_data: value,
                      );
                    },
                  )
              ),
            ],
          );
        }
      ),
      bottomNavigationBar: Consumer<data>(
        builder: (context, value, child){
          return Container(
            height: 70,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                border: horizontal_bar,
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 300,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Tổng số tiền: ",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "${value.getCartPrice()} VND",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.deepOrange,
                          ),
                        )
                      ],
                    ),

                  ),
                ),
                Expanded(
                  flex: 1,
                    child: GestureDetector(
                      child: Container(
                        color: Colors.deepOrange,
                        child: Center(
                          child: Text(
                              'Thanh Toán',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ),
                      onTap: (){
                        showModalBottomSheet(
                          useRootNavigator: true,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                              ),
                              height: 300,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Price: ${value.getCartPrice()}',
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontSize: 32,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 20),
                                      height: 75,
                                      margin: EdgeInsets.symmetric(vertical: 10),
                                      decoration: BoxDecoration(
                                        border: horizontal_bar,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/icon/credit-card.svg',
                                                  width: 30,
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.only(left: 8.0),
                                                  child: Text("Master card: 1234***" ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: SvgPicture.asset(
                                              'assets/icon/angle-small-right.svg',
                                              width: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 15),
                                      child: SlideAction(
                                        animationDuration: Duration(milliseconds: 400),
                                        text: 'Slide to pay',
                                        submittedIcon: SvgPicture.asset(
                                          'assets/icon/check.svg',
                                          width: 25,
                                        ),
                                        sliderButtonIcon: SvgPicture.asset(
                                          'assets/icon/angle-double-right.svg',
                                          width: 25,
                                        ),
                                        sliderRotate: false,
                                        onSubmit: (){
                                          value.addItemtoReciept();
                                          value.clearCartItem();
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },

                ),



                ),
              ]
            ),
          );
        }
      )
    );
  }
}


class item_cart extends StatefulWidget{
  final data cart_data;
  final cart_item item;
  final int index_at;
  item_cart({
    required this.item,
    required this.index_at,
    required this.cart_data,
  });
  @override
  State<StatefulWidget> createState() => cart_list_item(
      item:item,
      index_at: index_at,
      cart_data: cart_data,
  );

}

class cart_list_item extends State<item_cart>{
  final cart_item item;
  int index_at;
  final data cart_data;
  cart_list_item({
    required this.item,
    required this.index_at,
    required this.cart_data,
  });
  @override
  Widget build(BuildContext context) {
    Product Product_item = data().get_product_by_id(item.id);
    return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => product_item(item: data().get_product_by_id(Product_item.id))));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.asset(Product_item.image[0], height: 100,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 170,
                              padding: EdgeInsets.only(bottom: 20),
                              child: Text(
                                Product_item.name,
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 16,
                                    overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            Text(
                              'Giá: ${item.price.toString()}',
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 14,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                 Container(
                   child: Row(
                     children: [
                       Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 75,
                          height: 30,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black ,style: BorderStyle.solid,width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                child: SvgPicture.asset('assets/icon/minus.svg',width: 15,),
                                onTap: (){
                                  setState(() {
                                    if (item.quantity > 1){
                                      item.quantity--;
                                      cart_data.updateQuantity(index_at);
                                    }
                                  });
                                },
                              ),
                              Container(
                                  child: Text(
                                      item.quantity.toString(),
                                      style: TextStyle()
                                  )
                              ),
                              GestureDetector(
                                child: SvgPicture.asset('assets/icon/plus.svg',width: 15,),
                                onTap: (){
                                  setState(() {
                                    item.quantity++;
                                    cart_data.updateQuantity(index_at);
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                       Consumer<data>(
                        builder: (context, value, child){
                          return Container(
                           margin: EdgeInsets.only(right: 10),
                           child: InkWell(
                             child: SvgPicture.asset('assets/icon/trash-xmark.svg', width: 20,),
                             onTap: (){
                                value.removeItemFromCart(index_at);
                                Navigator.popAndPushNamed(context, '/cart');
                             },
                           ),

                          );
                        }
                       ),
                     ],
                   ),
                 ),
              ],
            ),
          );

  }

}