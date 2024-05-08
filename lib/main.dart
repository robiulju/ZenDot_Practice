import "package:flutter/material.dart";
import "package:get/get.dart";

void main(){
  runApp(FlutterApp());
}



class FlutterApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
        title: "Flutter App",
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
        title: const Text("DashBoardScreen"),
      ),

      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OutlinedButton(onPressed: (){
            Get.snackbar("New Notification", "This will be Snackbar Messgage",
            snackPosition: SnackPosition.TOP,
            // titleText: Text("Another Title"),
            // messageText: Text("Another Message",style: TextStyle(color: Colors.red),)
            colorText: Colors.amber,
            backgroundColor: Colors.black,
            borderRadius: 30,
            margin: const EdgeInsets.all(10),
            animationDuration: const Duration(milliseconds: 3000),
            backgroundGradient: const LinearGradient(colors: [Colors.red,Colors.blue]),
            borderColor: Colors.black,
            borderWidth: 3,
            boxShadows: [const BoxShadow(
              color: Color.fromARGB(255, 59, 255, 229),
              offset: Offset(30,50),
              spreadRadius: 6,
              blurRadius: 1
            )],
            isDismissible: true,
            // dismissDirection: SnackDismissDirection.HORRIZONTAL,

            // maxWidth: 300,
            // duration: Duration(milliseconds: 8000)            

            icon: Icon(Icons.send, color: Colors.white,),
            shouldIconPulse: false,
            leftBarIndicatorColor: Color.fromARGB(255, 23, 185, 107),

            // mainButton: 

            onTap: (val){
              print("Snackbar Clicked");
            },

            overlayBlur: 5,
            overlayColor: Colors.amber,
            // padding: EdgeInsets.all(50)
            showProgressIndicator: true,
          progressIndicatorBackgroundColor: Colors.red,
          snackbarStatus: (val){
            print(val);
          },

          userInputForm: Form(child: Row(children: [Expanded(child: TextField())],))


            );
          }, child: const Text("Show Snackbar"))

      ],),)
    );
  }
}