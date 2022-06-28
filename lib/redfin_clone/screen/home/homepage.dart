import 'package:flutter/material.dart';
import 'package:real_estate_app/redfin_clone/screen/favoritescreen/favorite_screen.dart';
import 'package:real_estate_app/redfin_clone/screen/feed/feed_screen.dart';
import 'package:real_estate_app/redfin_clone/screen/find/find_home.dart';
import 'package:real_estate_app/redfin_clone/screen/home/homescreen.dart';
import 'package:real_estate_app/redfin_clone/screen/myredfin/my_redin.dart';
import 'package:real_estate_app/redfin_clone/utils/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final listPage = <Widget>[
    const FindHome(),
    const FeedScreen(),
    const FavoriteScreen(),
    const MyHome(),
    const MyRedFin()
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: listPage[selectedindex],
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          selectedItemColor: AppColor.primary,
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: const TextStyle(color: Colors.grey),
          currentIndex: selectedindex,
          onTap: (v) {
            setState(() {
              selectedindex = v;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'Find Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.view_stream_outlined), label: 'Feed'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.maps_home_work_outlined), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: 'My Redfin'),
          ],
        ),
      ),
    );
  }
}
