import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix/screens/home.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState(){
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }
  int selectedPage = 0;

  final _pageOptions = [
    HomePage(),
    //InboxScreen(),
    //SignInScreen()
  ];

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return  Scaffold(
        backgroundColor: const Color(0xff110020),
      //appbar
        appBar: AppBar(

          leading:IconButton(onPressed: (){}, icon: const Icon(Icons.menu,color: Colors.white,)),
          title: Center(child: Image.asset("assets/netfliximage/appname-removebg-preview.png",height: 0.1*screenheight,)),
          actions:<Widget> [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.white,))
          ],
          bottom: TabBar(
              labelColor: Colors.white, //<-- selected text colordata
              unselectedLabelColor: Colors.grey, //<-- Unselected text color
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                //color: Colors.white,

              ),
              controller: _controller,
              tabs: [
                 Tab(text: "Movies",),
                 Tab(text: "Series",),
                 Tab(text: "Tv Show",),
              ]
          ),


          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        ),



      body:_pageOptions[selectedPage],
      bottomNavigationBar: BottomNavigationBar(

        //showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: const Color(0xff303248),
        //currentIndex: _currentindex,
        onTap: (index){
          setState(() {
            selectedPage = index;
          });
        },
        items: const[
          BottomNavigationBarItem(
            label: "",
              icon: Icon(Icons.home,color: Colors.white,)),
          BottomNavigationBarItem(
              label: " ",
              icon: Icon(Icons.favorite,color: Colors.white,)),
          BottomNavigationBarItem(
              label: "  ",
              icon: Icon(Icons.download_for_offline_sharp,color: Colors.white,)),
        ],
      ),
    );
  }
}
