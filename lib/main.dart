import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:quiz_system/home.dart";

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
        title: const Text("Navigation"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(Home(),
                fullscreenDialog: true,
                // transition: Transition.zoom,
                // duration: Duration(milliseconds: 4000),
                // curve: Curves.bounceInOut,
                
                
                );
              },
              child: const Text("Go to Home"),
            )
          ],
        ),
      ),
  
    );
  }
}