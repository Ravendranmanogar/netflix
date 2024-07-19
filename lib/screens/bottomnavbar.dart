import 'package:flutter/material.dart';
import 'package:netflix/screens/downloads.dart';
import 'package:netflix/screens/favorite.dart';
import 'package:netflix/screens/home.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedPage = 0;

  final _pageOptions = [
    const HomePage(),
    const FavoritePage(),
    const DownloadsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _pageOptions[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor:Colors.grey,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,

        showSelectedLabels: true,
        showUnselectedLabels: false,
        backgroundColor: const Color(0xff303248),
        currentIndex: selectedPage,
        onTap: (index){
          setState(() {

            selectedPage = index;
          });
        },
        items: const[
          BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.home,)),
          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              label: " ",
              icon: Icon(Icons.favorite,)),
          BottomNavigationBarItem(
              label: "  ",
              icon: Icon(Icons.download_for_offline_sharp,)),
        ],
      ),
    );
  }
}
