import "package:flutter/material.dart";
import "package:get/get.dart";

void main(){
  runApp(FlutterApp());
}



class FlutterApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
        title: "Dialog",
        theme: ThemeData(primarySwatch: Colors.amber),
        home: const DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget{
  const DashBoardScreen({super.key});

 
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
      ),

      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            ElevatedButton(onPressed: (){
              // Get.defaultDialog();
              Get.defaultDialog(
                title: "Dialog Title",
                titleStyle: const TextStyle(fontSize: 25),
                middleText: "This is middle text",
                middleTextStyle: const TextStyle(fontSize: 20),
                backgroundColor: Colors.purple,
                radius: 80,

                content: const Row(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(width: 16,),
                    Expanded(child: Text("Data Loading")),
                  ],
                ),

                textCancel: "Cancel",
                cancelTextColor: Colors.white,

                textConfirm: "Confirm",
                confirmTextColor: Colors.white,

                onCancel: (){
                  print("Cancel Clicked");
                },
                onConfirm: (){
                  print("Confirm clicked");
                },
                buttonColor: Colors.green,

                cancel: const Text("Cancels",style: TextStyle(color: Colors.white),),
                confirm: const Text("Confirms",style: TextStyle(color:Colors.white),),

                actions: [ElevatedButton(onPressed: (){
                  Get.back();
                }, child: const Text("Action-1")),
                ElevatedButton(onPressed: (){}, child:const Text("Action-2"))
                ],
                barrierDismissible: false,
              );

              
            }, child: const Text("Show Dialog"))
          
          ],),)
    );
  }
}