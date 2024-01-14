
class Product{
  String id;
  String name;
  String category_id;
  String detail;
  List<String> image;
  double ratting;
  double price;
  int number_of_ratting;

  Product({
    required this.id,
    required this.name,
    required this.detail,
    required this.category_id,
    required this.image,
    required this.ratting,
    required this.price,
    required this.number_of_ratting,
  });

  String get _id => id;
  String get _name => name;
  String get _detail => detail;
  List<String> get _image => image;
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
  Adbanner_data({
    required this.id,
    required this.imageurl,
  });

}
class cart_item {
  String id;
  int quantity;
  double price;
  cart_item({
    required this.id,
    required this.quantity,
    required this.price,
  });
}

class category_base {
  String icon;
  String name;
  String id;
  category_base({
    required this.id,
    required this.icon,
    required this.name,
  });
}

class receipt_data_card{
  String name;
  String id;
  int quantity;
  double price;
  String status;
  bool complete_status;
  receipt_data_card({
    required this.name,
    required this.id,
    required this.quantity,
    required this.price,
    required this.status,
    required this.complete_status,
  });

}