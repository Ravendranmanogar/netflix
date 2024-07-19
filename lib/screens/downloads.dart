import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DownloadsPage extends StatelessWidget {
  const DownloadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const Color(0xff110020),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Icon(Icons.error,color: Colors.white,size: 150.r,)),
          Center(child: Text("No Downloads Yet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: Colors.white),)),
        ],
      ),


    );
  }
}
