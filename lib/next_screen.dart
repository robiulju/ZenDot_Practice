import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        
      ),
      body: Center(child: Column(
        children: [
          Text("This is second Screen",style: TextStyle(color: Colors.red, fontSize: 30),),
          ElevatedButton(onPressed: (){
            Get.back();
          }, child: Text("Back"))
         
        ],
      ),),

      );
  }
    
}