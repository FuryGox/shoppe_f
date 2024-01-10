import 'package:flutter/material.dart';
import 'package:shoppe_f/screen/Product/product.dart';


class ReceiptItemCard extends StatefulWidget{
  final product_card data;

  ReceiptItemCard({
    required this.data,
  });

  @override
  State<StatefulWidget> createState() => ReceiptCard();
}


class ReceiptCard extends State<ReceiptItemCard>{

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(
              'assets/images/product1.png',
            height: 75,
          ),
          Column(
            children: [
              Text(
                  'itemA'
              ),
            ],
          ),
        ],
      ),
    );
  }
}
