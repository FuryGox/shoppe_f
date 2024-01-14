import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shoppe_f/data.dart';
import 'package:shoppe_f/screen/cart/cart_main.dart';
import 'package:shoppe_f/screen/favorite/favorite_main.dart';
import 'package:shoppe_f/screen/home/home_screen.dart';
import 'package:shoppe_f/screen/receipt/receipt_list.dart';

///Entry point => MyApp();
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  data item_cart_data = data();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => data(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomePage(),
        routes: {                                         //routes
          '/home': (context) => HomePage(),               // /home      => HomePage(),
          '/cart': (context) => cart_main(),              // /cart      => cart_main(),
          '/receipt': (context) => ReceiptItemCard(),     // /receipt   => ReceiptItemCard(),
          '/favorite': (context) => favorite_main(),      // /favorite  => favorite_main(),
        },
      ),
    );
  }
}



class MyAppBar_Home extends StatelessWidget implements PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(

      backgroundColor: const Color(0xFFee4d2d),
      foregroundColor: const Color(0xFFee4d2d),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icon/square-ellipsis.svg",color: Colors.white,) ,
        onPressed: () {
          
        },
      ),
      title: Container(
        height: 50,
        margin: const EdgeInsets.only(top: 20,bottom: 15),
        child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              hintText: 'Search',
              filled: true,
              fillColor: Colors.white, // Set your desired background color
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {

            },
          ),
        ),


      actions: <Widget>[

        IconButton(
          onPressed: () {  },
          icon: SvgPicture.asset("assets/icon/search.svg",
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/cart');
          },
          icon: SvgPicture.asset("assets/icon/cart-minus.svg",
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

}

class MyAppBar_Page extends StatelessWidget implements PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFee4d2d),
      foregroundColor: const Color(0xFFee4d2d),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icon/angle-left.svg",color: Colors.white,) ,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Container(
        height: 50,
        margin: EdgeInsets.only(top: 20,bottom: 15),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            hintText: 'Search',
            filled: true,
            fillColor: Colors.white, // Set your desired background color
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            // Handle search input
          },
        ),
      ),


      actions: <Widget>[

        IconButton(
          onPressed: () {  },
          icon: SvgPicture.asset("assets/icon/search.svg",
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/cart');
          },
          icon: SvgPicture.asset("assets/icon/cart-minus.svg",
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class MyBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  MyBottomNavBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: Colors.deepOrangeAccent,
      unselectedItemColor: Colors.black,

      onTap: onTap,
      items: [

        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icon/house-chimney.svg",color: Colors.black,),
          label: "Home" ,

        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icon/receipt.svg",color: Colors.black,),
          label: 'Receipt',

        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icon/heart.svg",color: Colors.black,),
          label: 'Favorites',

        ),

      ],
    );
  }
}

class backbutton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset("assets/icon/angle-left.svg",color: Colors.white,) ,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

}