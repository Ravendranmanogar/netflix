import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  int _currentindex =0;
  List<Widget>body = const[
    Icon(Icons.home),
    Icon(Icons.favorite),
    Icon(Icons.download_for_offline_sharp),
  ];
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return  SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xff110020),
  //appbar
          appBar: AppBar(

            leading:IconButton(onPressed: (){}, icon: const Icon(Icons.menu,color: Colors.white,)),
            title: Center(child: Image.asset("assets/netfliximage/appname-removebg-preview.png",height: 0.1*screenheight,)),
            actions:<Widget> [
              IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.white,))
            ],
            bottom: TabBar(
                controller: _controller,
                tabs: const[
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

        // bottomNavigationBar: AppBar(
        //   backgroundColor: Colors.grey,
        //   actions: [
        //     IconButton(onPressed: (){}, icon: Icon(Icons.home))
        //   ],
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // AppBar(
            //   backgroundColor: Colors.red,
            //   title: Text("Second appbar"),
            // ),
            //HomePage()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          //showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Color(0xff303248),
          currentIndex: _currentindex,
          onTap: (int NewIndex){
            setState(() {
              _currentindex = NewIndex;
            });
          },
          items: const[
            BottomNavigationBarItem(
              label: "",
                icon: Icon(Icons.home,color: Colors.white,)),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.favorite,color: Colors.white,)),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.download_for_offline_sharp,color: Colors.white,)),
          ],
        ),
      ),
    );
  }
}
