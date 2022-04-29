import 'package:flutter/material.dart';
import "Screen1.dart";
import "Screen2.dart";
import "Screen3.dart";
import "Screen4.dart";




class MainScreen extends StatelessWidget {
  @override 

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Splash Screen.png")
          )
        ),
        child: Container(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => Screen1()))
              );
            },
            child: Container(
              width: 200,
              height: 50,
              color: Color.fromRGBO(255, 255, 255, 0.4),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 45),
              child: Container(
                alignment: Alignment.center,
                child: Text("Continue", style: TextStyle(fontSize: 25, color: Colors.black, fontFamily: "TenorSans", fontWeight: FontWeight.w400))
              )


            )
          )
        )
      )
    );
  }
}