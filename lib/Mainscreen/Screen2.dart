import "package:flutter/material.dart";
import "Screen1.dart";
import "Screen3.dart";


class Screen2 extends StatelessWidget {
  @override 

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
            margin: EdgeInsets.fromLTRB(0, 40, 0,0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Habits.png")
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
                        MaterialPageRoute(builder: (context) => Screen1())
                      );
                    },
                    child: Container(
                      child: Text("Back", style: TextStyle(fontFamily: "TenorSans", fontSize: 20))
                    )
                  ),
                  Container(
                    child: Image.asset("assets/images/List2.png")
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => Screen3()
                        )
                      );
                    },
                    child: Container(
                      child: Text("Next", style: TextStyle(fontFamily: "TenorSans", fontSize: 20))
                    )
                  )

                ]
              )
            )
          )
        ]
      )
    );
  }
}