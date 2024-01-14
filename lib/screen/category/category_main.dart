import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shoppe_f/main.dart';

import 'package:shoppe_f/data.dart';
import 'package:shoppe_f/screen/Product/product.dart';

import '../Product/product_main.dart';
import '../home/list_item.dart';

class category_main extends StatefulWidget{
  List<product_card> category;
  category_main({
    required this.category
  });

  @override
  State<StatefulWidget> createState() => category_page(category_item: category);

}
class category_page extends State<category_main>{
  final List<product_card> category_item;
  category_page({
    required this.category_item,
  });



  int selectedIndex = 0;
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
      appBar: MyAppBar_Page(),
      body: Consumer<data>(
        builder: (context, value, child){
          return Column(
            children: [
              Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: category_item.length,
                    itemBuilder: (context, index) => ProductContainer(
                      product: category_item[index],
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => product_item(item: data().get_product_by_id(category_item[index].id)),
                          ),
                        )
                      } ,
                    ),
                  )
              ),
            ],
          );
        }
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