import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

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
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  //color: Colors.white,

                ),
                controller: _controller,
                tabs: [
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.redAccent, width: 2)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("APPS"),
                      ),
                    ),
                  ),
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


        body:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Tab(
              child: Container(

                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.06,
                color:Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: (){}, child: Text("Movies",style: TextStyle(color: Colors.white),)),
                    TextButton(onPressed: (){}, child: Text("Movies",style: TextStyle(color: Colors.white),)),
                    TextButton(onPressed: (){}, child: Text("Movies",style: TextStyle(color: Colors.white),)),
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(

          //showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: const Color(0xff303248),
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
