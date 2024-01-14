import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppe_f/main.dart';
import 'package:shoppe_f/screen/Product/product.dart';
import 'package:shoppe_f/screen/Product/product_main.dart';

import '../../data.dart';
import '../home/list_item.dart';

class favorite_main extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => favorite_page();
}
class favorite_page extends State<favorite_main>{
  int selectedIndex = 2;
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar_Home(),
      body: Consumer<data>(
        builder: (context, value, child) {
          return Column(
            children: [
              Expanded(

                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: value.getFavoriteCard().length,
                    itemBuilder: (context, index) {
                      return Favorate_product(
                        product: value.getFavoriteCard()[index],
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => product_item(item: value.favorite_list[index]),
                            ),
                          )
                        },
                      );
                    },
                  ),
              ),
            ],
          );
        },
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