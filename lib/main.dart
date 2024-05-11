import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:quiz_system/home.dart";
import "package:quiz_system/next_screen.dart";

void main(){
  runApp(FlutterApp());
}



class FlutterApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
        title: "Navigation",
        theme: ThemeData(primarySwatch: Colors.amber),
        initialRoute: "/",
        defaultTransition: Transition.zoom,
        getPages: [GetPage(name: "/", page: ()=>FlutterApp()),
        GetPage(name: "/home", page: ()=>Home()),
        GetPage(name: "/nextScreen", page: ()=>NextScreen(),transition: Transition.leftToRight),
        
        ],
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
                Get.toNamed("/home");
              },
              child: const Text("Go to Home"),
            )
          ],
        ),
      ),
  
    );
  }
}