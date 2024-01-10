
import 'package:flutter/cupertino.dart';

class Product{
  String id;
  String name;
  String detail;
  String image;
  double ratting;
  double price;

  Product({
    required this.id,
    required this.name,
    required this.detail,
    required this.image,
    required this.ratting,
    required this.price,
  });

  String get _id => id;
  String get _name => name;
  String get _detail => detail;
  String get _image => image;
  double get _ratting => ratting;
  double get _price => price;

}
class product_card{
  String id;
  String imageUrl;
  String title;
  String price;
  String rating;

  product_card({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.rating,
  });

  String get _id => id;
  String get _imageUrl => imageUrl;
  String get _title => title;
  String get _price => price;
  String get _rating => rating;

}
class Adbanner_data{
  String id ;
  String imageurl;
  double percent_off;
  double day_left;
  Adbanner_data({
    required this.id,
    required this.imageurl,
    required this.percent_off,
    required this.day_left,
  });

  String get _id => id;
  String get _imageurl => imageurl;
  double get _percent_of => percent_off;
  double get _day_left => day_left;
}

class data_template {
  List<Product> itemProductList = [
    Product(
        id: 'id1',
        name: 'itemA',
        detail: 'detail',
        image: 'assets/images/product1.png',
        ratting: 5.0,
        price: 300000
    ),
    Product(
        id: 'id2',
        name: 'itemB',
        detail: 'detail',
        image: 'assets/images/product2.png',
        ratting: 5.0,
        price: 300000
    ),
    Product(
        id: 'id3',
        name: 'itemC',
        detail: 'detail',
        image: 'assets/images/product3.png',
        ratting: 5.0,
        price: 300000
    ),
    Product(
        id: 'id4',
        name: 'itemD',
        detail: 'detail',
        image: 'assets/images/product4.png',
        ratting: 5.0,
        price: 300000
    ),
  ];






  List<product_card> itemCardList = [
    product_card(
      imageUrl: 'assets/images/product1.png',
      id: 'id1',
      title: 'itemA',
      price: '300.000',
      rating: '5.0',
    ),
    product_card(
      imageUrl: 'assets/images/product2.png',
      id: 'id2',
      title: 'itemB',
      price: '300.000',
      rating: '5.0',
    ),
    product_card(
      imageUrl: 'assets/images/product3.png',
      id: 'id3',
      title: 'itemC',
      price: '300.000',
      rating: '5.0',
    ),
    product_card(
      imageUrl: 'assets/images/product3.png',
      id: 'id4',
      title: 'itemD',
      price: '300.000',
      rating: '5.0',
    ),
    product_card(
      imageUrl: 'assets/images/product3.png',
      id: 'id5',
      title: 'itemE',
      price: '300.000',
      rating: '5.0',
    ),
    product_card(
      imageUrl: 'assets/images/product3.png',
      id: 'id6',
      title: 'itemF',
      price: '300.000',
      rating: '5.0',
    ),
    product_card(
      imageUrl: 'assets/images/product4.png',
      id: 'id7',
      title: 'itemG',
      price: '300.000',
      rating: '5.0',
    )
  ];


  List<Adbanner_data> ad_data = [
    Adbanner_data(
        id: 'id4',
        imageurl: 'assets/images/product4.png',
        percent_off: 10,
        day_left: 12
    ),
    Adbanner_data(
        id: 'id1',
        imageurl: 'assets/images/product1.png',
        percent_off: 50,
        day_left: 7
    ),
    Adbanner_data(
        id: 'id3',
        imageurl: 'assets/images/product3.png',
        percent_off: 20,
        day_left: 19
    ),
    Adbanner_data(
        id: 'id2',
        imageurl: 'assets/images/product2.png',
        percent_off: 15,
        day_left: 20
    ),
  ];

  Product? get_product_by_id(String id){
    return itemProductList.firstWhere((element) => element.id == id,
        orElse: () => Product(
            id: 'id0',
            name: "Product don't exit",
            detail: "Something wrong with this",
            image: 'assets/images/product1.png',
            ratting: 0.0,
            price: 0.0
        )
    );
  }

}