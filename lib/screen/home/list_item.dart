import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe_f/constants.dart';

class CustomProductContainer extends StatelessWidget {

  final String imageUrl;
  final String title;
  final String rating;
  final String price;

  CustomProductContainer({
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double itemWidth = ((deviceWidth ) / 2) -20;
    return Container(
      width: itemWidth + 10,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
      ),
      child: Column(
        children: [
          Image.asset(imageUrl),
          Text(title),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(rating),
                SizedBox(width: 10,),
                SvgPicture.asset("assets/icon/star.svg"),
                SizedBox(width: 30,),
                Text(price ,
                  style: TextStyle(
                    color: Color(0xF7E75213),
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ],
            ),
          ),
          SizedBox(
            width: (itemWidth / 2) ,
            child: ElevatedButton(
              onPressed: () {
                // Calling function here (add to cart)
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
              ),

              child: Text(
                "Buy",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          ),
        ],
      ),
    );
  }
}
