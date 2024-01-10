import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe_f/screen/Product/product.dart';

import '../Product/product_main.dart';


class ProductContainer extends StatelessWidget {

  final product_card product;
  final void Function()? onTap;

  const ProductContainer({
    required this.product,
    required this.onTap,

  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          border: const Border(bottom: BorderSide(
                                color: Colors.grey, // Set the bottom border color
                                width: 1.0, // Set the bottom border width
            ),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            //image
            Image.asset(product.imageUrl, height: 80,),
            Column(
              children: [
                Text(product.title,style: TextStyle(fontSize: 24)),
                Row(
                  children: [
                    Text(product.rating),
                    SvgPicture.asset('assets/icon/star.svg',width: 12,),
                    SizedBox(width: 150),
                  ],
                ),

              ],
            ),
            Text('\$'+'${product.price}'),
          ],
        ),
      ),
    );
  }
}

class Adbanner_content extends StatelessWidget{
  final Adbanner_data data;
  Adbanner_content({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => product_item(item: data_template().get_product_by_id(data.id))
            )
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          border: Border.all(width: 1,style: BorderStyle.solid,color: Colors.black),
        ),
        height: 100,
        width: 400,
        child: Image.asset(data.imageurl),
      ),
    );
  }
  
}