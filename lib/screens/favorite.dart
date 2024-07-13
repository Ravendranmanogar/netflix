import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff110020),
      body: Padding(
        padding:  EdgeInsets.fromLTRB(20.0.w,25.0.h,15.0.w,15.0.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Favorites",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 12.5.h,),
              Column(
                children: [
                  //1st Row
                  Row(
                    children: [
                      Container(
                        height: 200.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //color: Colors.white
                          image: const DecorationImage(
                              image: AssetImage("assets/trending/meters.jpg"),
                          fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(width: 20.w,),
                      Container(
                        height: 200.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            //color: Colors.white
                          image: const DecorationImage(
                              image: AssetImage("assets/trending/interstellar.jpg"),
                          fit: BoxFit.fill)
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 22.5.h,),
                  //2st Row
                  Row(
                    children: [
                      Container(
                        height: 200.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            //color: Colors.white
                            image: const DecorationImage(
                                image: AssetImage("assets/movies/evildeadrise.jpg"),
                                fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(width: 20.w,),
                      Container(
                        height: 200.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            //color: Colors.white
                            image: const DecorationImage(
                                image: AssetImage("assets/movies/moneyheist.jpg"),
                                fit: BoxFit.fill)
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 22.5.h,),
                  //3st Row
                  Row(
                    children: [
                      Container(
                        height: 200.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            //color: Colors.white
                            image: const DecorationImage(
                                image: AssetImage("assets/trending/oxygen.jpg"),
                                fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(width: 20.w,),
                      Container(
                        height: 200.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            //color: Colors.white
                            image: const DecorationImage(
                                image: AssetImage("assets/movies/conjuring.jpg"),
                                fit: BoxFit.fill)
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
