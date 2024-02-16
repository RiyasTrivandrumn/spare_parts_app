import 'package:flutter/material.dart';
import 'package:spare_parts/views/login.dart';
import 'package:spare_parts/views/registration.dart';
import 'package:spare_parts/views/splashhome.dart';

void main(){
 runApp(MyApp());




}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: "/splash",

      routes: {
        "/login":(context) => LoginPage(),
        "/register":(context) => RegisterPage(),
        "/splash":(context) => SplashHome(),



      },
        theme: ThemeData(
        appBarTheme:AppBarTheme(
          backgroundColor:  Color(0xff0E1D3E),
          iconTheme: IconThemeData(color: Colors.white)
        ),
          textTheme: TextTheme(
              displayMedium: TextStyle(color: Colors.white, fontSize: 18),
              displaySmall: TextStyle(color:Colors.white70,fontSize: 14)),
              
          scaffoldBackgroundColor: Color(0xff0E1D3E)),
      debugShowCheckedModeBanner: false,

    
    );
  }
}