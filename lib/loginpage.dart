import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/homepage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  void _navigatetonextscreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Homepage()));
  }
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return    SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff110020),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/netfliximage/appname-removebg-preview.png",scale: 2.5,),
                //const Text("Netflix",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 40),),
                //SizedBox(height:screenwidth*.05,),
  //email
                 TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10),),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10),),
                      borderSide: BorderSide(color: Colors.red),
                    )
                  ),
                ),
                SizedBox(height:screenwidth*.05,),
  //password
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: const InputDecoration(
                    //label: "Email",

                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10),),
                        borderSide: BorderSide(width:2,color: Colors.red),
                      ),
                      focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10),),
                        borderSide: BorderSide(color: Colors.red),
                      )
                  ),
                ),
                SizedBox(height:screenwidth*.05,),
  // button
                  OutlinedButton(

                  style: OutlinedButton.styleFrom(backgroundColor:Colors.red),
                  onPressed: (){ _navigatetonextscreen(context);},
                  child: const Text('Sign in',style: TextStyle(color: Colors.white),),
                ),
                // TextButton(onPressed: () {
                //   _navigatetonextscreen(context);
                // },
                //     child: const Text("7 Days..",
                //       style: TextStyle(
                //           color: Colors.blue),)),
                 SizedBox(height:screenwidth*.03,),
  //sign up
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Don't have an account? ",style: TextStyle(color: Colors.white),),
                    Text("Sign Up ",style: TextStyle(color: Colors.red),),
                  ],
                )

              ],
            ),
          ),
        )
      ),
    );
  }
}
