import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:spare_parts/views/sparehome.dart';

class SpareController {
  regUser(
      {required String username,
      required String password,
      required String email,
      required String phonenumber}) async {
    print("object");
    var url = Uri.parse("http://10.0.2.2:8000/user/api/");
    try {
      var response = await http.post(url, body: {
        "username": username,
        "password": password,
        "email": email,
        "phone_number": phonenumber
      });
      print(response.body);
    } catch (e) {
      print(e);
    }
  }


  verifylogin({required String username,required String password,required ctx})
  async{
    
     var url = Uri.parse("http://10.0.2.2:8000/api/token/");
      
      var response = await http.post(url, body: {
        "username": username,
        "password": password,
       
      });
       var a = jsonDecode(response.body);
      if(response.statusCode == 200){

         Navigator.push(ctx,MaterialPageRoute(builder:(context) => SpareHome(),));
         ScaffoldMessenger.of(ctx).showSnackBar(
          SnackBar(content: Text("Sucessfully logged in"),
          backgroundColor:Colors.green,
          duration: Duration(seconds: 2),)
         );

         print(response.body);
  
      }
      else{
                 ScaffoldMessenger.of(ctx).showSnackBar(
                  

          SnackBar(content: Text(a["detail"]),
          backgroundColor:Colors.green,
          duration: Duration(seconds: 2),)
         );


      }
      //  print(response.body);
      
     


     




  }

}
