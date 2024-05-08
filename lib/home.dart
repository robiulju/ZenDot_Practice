import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),

      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("This is Home Screen",style: TextStyle(color: Colors.purpleAccent,fontSize: 30),),
          const SizedBox(height: 8,),
          ElevatedButton(onPressed: (){

          }, child: const Text("Next Screen",style: TextStyle(fontSize: 18),),
          
            
          ),

          const SizedBox(height: 8,),

          ElevatedButton(onPressed: (){
            Get.back();

          }, child: const Text("Back to Main",style: TextStyle(fontSize: 18),))
        ],
      ),),
    );
  }
}
