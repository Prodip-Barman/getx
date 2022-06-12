// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Flutter GetX",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter GetX'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                    child: const Text("Show SnackBar"),
                    onPressed: () {
                      Get.snackbar(
                        "SnackBar Title",
                        "This is SnackBar Message",
                        snackPosition: SnackPosition.BOTTOM,
                        //titleText: Text("Another title"),
                        //messageText: Text("This is anoter messeage text", style: TextStyle(color: Colors.green),)
                        colorText: Colors.black,
                        backgroundColor: Colors.purple,
                        borderRadius: 30,
                        //maxWidth: 500,
                        animationDuration: Duration(milliseconds: 3000),

                      );
                    },
                  ),
              SizedBox(height: 20,),
              ElevatedButton(
                child: Text("Show Dialog"),
                onPressed: (){
                  // Get.defaultDialog();
                  Get.defaultDialog(
                    title: "Dialog Title",
                    middleText: "This is middle Text",
                    content: Row(
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(width: 20,),
                        Expanded(child: Text("Data loading")),
                      ],
                    ),
                    textConfirm: "Confirm",
                    confirmTextColor: Colors.orange,
                    textCancel: "Cancel",
                    cancelTextColor: Colors.blue,
                    onCancel: (){},
                    onConfirm: (){},
                    buttonColor: Colors.black,
                    actions: [
                      ElevatedButton(onPressed: (){}, child: Text("Cancle"),),
                      ElevatedButton(onPressed: (){}, child: Text("Confirm"),),
                    ]
                  );
                },),
              SizedBox(height: 20,),
              ElevatedButton(
                child: Text("Bottom Sheet"),
                onPressed: (){
                  Get.bottomSheet(
                    Container(
                      child: Wrap(
                        children: [
                          ListTile(
                            leading: Icon(Icons.wb_sunny_outlined),
                            title: Text("Light Theme"),
                            onTap: (){
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.wb_sunny),
                            title: Text("Dark Theme"),
                            onTap: (){
                              Get.changeTheme(ThemeData.dark());
                            },
                          )
                        ],
                      ),
                    ),
                    backgroundColor: Colors.orange,
                    barrierColor: Colors.greenAccent.shade100,
                    isDismissible: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 2.0
                      )
                    )
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

}
