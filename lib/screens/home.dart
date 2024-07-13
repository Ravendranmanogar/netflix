import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: const Color(0xff110020),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0.w,25.0.h,15.0.w,15.0.h),
        child:  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          // popular series
              Row(
                children: [
                  Text("Popular Series",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.sp,),)
                ],
              ),
              SizedBox(height: 15.h,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                //axisDirection: AxisDirection.right,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 150.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage("assets/movies/squidgame.jpg"),
                              fit: BoxFit.fill)
                      ),
                    ),
                    SizedBox(width: 18.w,),
                    Container(
                      height: 150.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                          image: AssetImage("assets/movies/moneyheist.jpg"),
                          fit: BoxFit.fill)
                      ),
                    ),
                    SizedBox(width: 18.w,),
                    Container(
                      height: 150.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage("assets/movies/paekyblinders.jpg"),
                              fit: BoxFit.fill)
                      ),
                    ),
                    SizedBox(width: 18.w,),
                    Container(
                      height: 150.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage("assets/movies/you.jpg"),
                              fit: BoxFit.fill)
                      ),
                    ),
          
                  ],
                ),
              ),
              SizedBox(height: 15.h,),
          
          //horror movies
              Row(
                children: [
                  Text("Horror Movies",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.sp,),)
                ],
              ),
              SizedBox(height: 15.h,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                //axisDirection: AxisDirection.right,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 150.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage("assets/movies/smile.jpg"),
                              fit: BoxFit.fill)
                      ),
                    ),
                    SizedBox(width: 18.w,),
                    Container(
                      height: 150.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage("assets/movies/veronica.jpg"),
                              fit: BoxFit.fill)
                      ),
                    ),
                    SizedBox(width: 18.w,),
                    Container(
                      height: 150.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage("assets/movies/evildeadrise.jpg"),
                              fit: BoxFit.fill)
                      ),
                    ),
                    SizedBox(width: 18.w,),
                    Container(
                      height: 150.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage("assets/movies/conjuring.jpg"),
                              fit: BoxFit.fill)
                      ),
                    ),
          
                  ],
                ),
              ),
              SizedBox(height: 15.h,),
          
          //trending in india
              Row(
                children: [
                  Text("Horror Movies",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.sp,),)
                ],
              ),
              SizedBox(height: 15.h,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                //axisDirection: AxisDirection.right,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 150.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage("assets/trending/interstellar.jpg"),
                              fit: BoxFit.fill)
                      ),
                    ),
                    SizedBox(width: 18.w,),
                    Container(
                      height: 150.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage("assets/trending/meters.jpg"),
                              fit: BoxFit.fill)
                      ),
                    ),
                    SizedBox(width: 18.w,),
                    Container(
                      height: 150.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage("assets/trending/oppenheimer.jpg"),
                              fit: BoxFit.fill)
                      ),
                    ),
                    SizedBox(width: 18.w,),
                    Container(
                      height: 150.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage("assets/trending/oxygen.jpg"),
                              fit: BoxFit.fill)
                      ),
                    ),
          
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
