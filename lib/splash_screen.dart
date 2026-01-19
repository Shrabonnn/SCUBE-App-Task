import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scube_app_task/screens/first_page.dart';
import 'package:scube_app_task/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool showLogin = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),(){
      //Navigator.pushReplacement((context), MaterialPageRoute(builder: (context)=>LoginScreen()));
      setState(() {
        showLogin = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemBlue,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Image.asset('assets/splash_screen/Group 1000009773.png',),

            SizedBox(height: 100,),
            build_login(),
          ],
        ),
      ),
    );
  }

  Expanded build_login() {
    return Expanded(
            child: AnimatedSlide(
              offset: showLogin ? Offset(0,0) : Offset(0,1),
              duration: Duration(milliseconds: 500),
              curve: Curves.easeOut,
              child: AnimatedOpacity(
                opacity: showLogin ? 1:0 ,
                duration: Duration(milliseconds: 500),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 36, horizontal: 12),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Text("Login",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
                        SizedBox(height: 16,),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Username',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon: Icon(Icons.visibility_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.end,
                          children: [TextButton(onPressed: (){}, child: Text("Forget password?",style: TextStyle(color: Colors.black54,fontSize: 16,decoration: TextDecoration.underline,),))],
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage(),),);
                              },
                              child: const Text('Login',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))

                            ),),
                        ),
                        const SizedBox(height: 8,),
                        RichText(
                          text: TextSpan(
                            text: "Don't have any account? ",
                            style: const TextStyle(color: Colors.black54,fontWeight: FontWeight.w500),
                            children: [
                              TextSpan(
                                text: "Register Now",
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16
                                ),

                              ),
                            ],
                          ),
                        ),



                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}


