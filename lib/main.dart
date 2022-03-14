import 'package:book_store/pages/favourite.dart';
import 'package:book_store/pages/home.dart';
import 'package:book_store/pages/personal_info.dart';
import 'package:book_store/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Splashscreen() ,

));


class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key key}) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {

  var _page=1;
  final pages=[Favourite(),Home(),Personal_info()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: 1,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.assignment, size: 30),
            Icon(Icons.home_rounded, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.deepOrangeAccent[100],
          backgroundColor: Colors.grey[100],
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: pages[_page],
    );
  }
}
