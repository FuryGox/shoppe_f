import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppe_f/main.dart';
import 'package:shoppe_f/screen/receipt/receipt_model.dart';

import 'package:shoppe_f/data.dart';


class ReceiptItemCard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ReceiptCard();
}

class ReceiptCard extends State<ReceiptItemCard>{
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

  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar_Home(),
      body: Consumer<data>(
          builder: (context, value, child){
            return Column(
              children: [
                Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical ,
                      itemCount: value.reciept_list.length,
                      itemBuilder: (context, index) {
                        return receipt_card(
                          data_card: value.reciept_list[index] ,
                          index: index,
                        );
                      },
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

