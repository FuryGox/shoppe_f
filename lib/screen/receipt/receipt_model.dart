import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shoppe_f/constants.dart';
import 'package:shoppe_f/data.dart';

import '../Product/product.dart';
import '../Product/product_main.dart';

class receipt_card extends StatefulWidget{
  final receipt_data_card data_card;
  final int index;
  receipt_card({
    required this.data_card,
    required this.index,
});
  @override
  State<StatefulWidget> createState() => receipt_card_base(data_card: data_card, index: index);

}

class receipt_card_base extends State<receipt_card>{
  final receipt_data_card data_card;
  final int index;
  receipt_card_base({
    required this.data_card,
    required this.index,
});

  @override
  Widget build(BuildContext context) {
    return Consumer<data>(
      builder: (context, value, child){
        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => product_item(item: value.get_product_by_id(data_card.id)),));
          },
          child: Container(
            decoration: BoxDecoration(
                border: horizontal_bar
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: horizontal_bar_gray
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Image.asset(
                              value.get_product_by_id(data_card.id).image[0],
                              height: 80,
                              width: 80,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 200,
                                  child: Text(
                                      data_card.name,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 18
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Số lượng: ${data_card.quantity}'),
                                      Text('Tổng giá trị: ${data_card.price}'),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        child: SvgPicture.asset(
                          'assets/icon/angle-small-right.svg',
                          width: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),

                    child: data_card.complete_status?
                        const Text(
                            'Giao Hàng Thành Công !'
                        ):
                        Text(
                            data_card.status
                        )
                ),
                data_card.complete_status?Container():Container(
                  decoration: BoxDecoration(
                    border: horizontal_bar_gray
                  ) ,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(

                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.grey,
                            side: BorderSide(color: Colors.grey, style: BorderStyle.solid,width: 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          onPressed: (){


                          },
                          child: Text('Yêu cầu hoàn tiền'),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrange,
                            onPrimary: Colors.white,
                            side: BorderSide(color: Colors.deepOrange, style: BorderStyle.solid,width: 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),

                          ),
                          onPressed: (){
                            Provider.of<data>(context,listen: false).setCompleteStatus(index);
                          },
                          child: Text('Đã Nhận được hàng'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },

    );
  }

}
