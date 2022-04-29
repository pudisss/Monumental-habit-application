import "package:flutter/material.dart";
import "Screen2.dart";
import "Screen4.dart";
class Screen3 extends StatelessWidget {
  @override 

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
            margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Content3.png")
              )
            )
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Screen2())
                      );
                    },
                    child: Container(
                      child: Text("Back", style: TextStyle(fontFamily: "TenorSans", fontSize: 20, fontStyle: FontStyle.normal))
                    )
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/List3.png")
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen4()
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