import "package:flutter/material.dart";
import "Screen2.dart";
import "MainScreen.dart";

class Screen1 extends StatelessWidget {
  @override 

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
            margin: EdgeInsets.fromLTRB(0,40,0,0),
            
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/Content.png")
              )
            )
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen())
                      );
                    },
                    child: Container(
                      child: Text("Back", style: TextStyle(fontFamily: "TenorSans", fontSize: 20, fontStyle: FontStyle.normal))
                    )
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/Group 10148.png")
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen2()
                        )
                      );
                    },
                    child: Container(
                      child: Text("Next", style: TextStyle(fontFamily: "TenorSans", fontSize: 20, color: Colors.black, fontStyle: FontStyle.normal))
                    )
                  )

                ]
              ) 
            )
          )
        ],
      )
    );
  }
}