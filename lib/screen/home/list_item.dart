import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:shoppe_f/screen/Product/product.dart';
import 'package:shoppe_f/data.dart';
import '../Product/product_main.dart';
import '../category/category_main.dart';


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
                Container(
                  width: 175,
                    margin: EdgeInsets.only(bottom: 7),
                    child: Text(
                        product.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16
                        )
                    )
                ),
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

class Favorate_product extends StatelessWidget {

  final product_card product;
  final void Function()? onTap;

  const Favorate_product({
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
                Container(
                    width: 175,
                    margin: EdgeInsets.only(bottom: 7),
                    child: Text(
                        product.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16
                        )
                    )
                ),
                Row(
                  children: [
                    Text(product.rating),
                    SvgPicture.asset('assets/icon/star.svg',width: 12,),
                    SizedBox(width: 150),
                  ],
                ),

              ],
            ),
            GestureDetector(
              onTap: (){
                Provider.of<data>(context,listen: false).removeFromFavorite(product.id);
              },
              child: Container(
                height: 35,
                width: 35,
                child: SvgPicture.asset('assets/icon/circle-xmark.svg',width: 20,height: 20,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Adbanner_content extends StatelessWidget{
  final Adbanner_data addata;
  Adbanner_content({
    required this.addata,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => product_item(item: data().get_product_by_id(addata.id))
            )
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: 100,
        width: 400,
        child: Image.asset(addata.imageurl),
      ),
    );
  }
  
}
class category_wigget extends StatelessWidget{
  final category_base category;
  category_wigget({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => category_main(
                  category: data().getCategory(category.id),
                )
            )
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        height: 50,
        child: Column(
          children: [
            SvgPicture.asset(
              category.icon,
              height: 20,
              width: 20,
            ),
            Spacer(flex: 5,),
            Text(category.name),
          ],
        ),
      ),
    );
  }
}