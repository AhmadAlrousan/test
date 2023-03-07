import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test22/cons.dart';

import 'adapter_indicator.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: Column(
       children: [
         Expanded(
           child: Container(
             width: double.infinity,
             color: Colors.blue,
           ),
         ),
         Expanded(
           flex: 2,
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: Column(

               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Login" , style: TextStyle(fontSize: 30, color: Colors.blue),),
                 SizedBox(height: 40,),
                 TextFormField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     labelText: "Email address",
                   ),
                 ),
                 SizedBox(height: 20,),
                 TextFormField(
                   decoration: const InputDecoration(
                     border: OutlineInputBorder(),
                     labelText: "Password",
                   ),
                 ),
                 SizedBox(height: 40,),

                 Row(
                   children: [
                     Expanded(
                       child: Container(
                         child: MaterialButton(onPressed: (){}
                           ,child: Text("login",style: TextStyle(color: Colors.white),),
                           color: Colors.blue,),
                       ),
                     ),
                     SizedBox(width: 20,),
                     Expanded(
                       child: Container(
                         child: MaterialButton(onPressed: (){},
                           child: Text("singUp",style: TextStyle(color: Colors.white)),
                           color: Colors.blue,),
                       ),
                     ),

                   ],
                 ),
                 AdapterIndicator(os: getOS(),),

               ],
             ),
           ),
         )
       ],
     ),
    );
  }
}
