import "package:flutter/material.dart";
import "Signinsignup/signin.dart";


class Screen4 extends StatelessWidget {
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
                image: AssetImage("assets/images/Lastpage.png")
              )
            )
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Container(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signin())
                  );
                },
                child: Container(
                  width: 300,
                  height: 50,
                  color: Color.fromRGBO(253, 167, 88, 1),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text("Get Started", style: TextStyle(color: Color.fromRGBO(87, 51, 83, 1), fontSize: 20, ))
                  )
                )
              )
            )

          )
        ]
      )
    );
  }
}