import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoppe_f/constants.dart';
import 'package:shoppe_f/screen/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFee4d2d)),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar();

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
          onPressed: () {  },
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
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.red,

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
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icon/user.svg",color: Colors.black,),
          label: 'Profile',

        ),
      ],
    );
  }
}