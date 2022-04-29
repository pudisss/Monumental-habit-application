import "package:flutter/material.dart";
import "signin.dart";


class Forgotpassword extends StatelessWidget {
  @override 

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/Back.png"),
        backgroundColor: Color.fromRGBO(255, 243, 233, 1),
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(255, 243, 233, 1),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text("FORGOT YOUR PASSWORD?", style: TextStyle(fontFamily: "Klasik", fontSize: 24, fontWeight: FontWeight.w400, fontStyle: FontStyle.normal))
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Image.asset("assets/images/forgotpwdpicture.png")
              ),
              Container(
                width: 374,
                height: 240,
                margin: EdgeInsets.only(left: 15, right: 15, top: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text("""
Enter your registered email below to 
receive password reset instruction
""", style: TextStyle(fontFamily: "Manrobe", fontSize: 14, fontWeight: FontWeight.w400,))
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        child: SizedBox(
                          width: 275,
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(255, 243, 233, 1),
                              hintText: "Email",
                              hintStyle: TextStyle(
                                fontFamily: "Klasik",
                                fontSize: 18,
                                color: Color.fromRGBO(253, 167, 88, 1)
                              ),
                              prefixIcon: Icon(Icons.email, color: Color.fromRGBO(253, 167, 88, 1)),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5)
                              )
                            )
                          )

                        )
                      ),
                      Container(
                        width: 275,
                        height: 50,
                        margin: EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromRGBO(253, 167, 88, 1),

                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("Send me link", style: TextStyle(fontFamily: "Manrope", fontSize: 16, fontWeight: FontWeight.w700, color: Color.fromRGBO(87, 51, 83, 1)))
                        )
                      )
                    ]
                  )
                )
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 60),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signin()
                      )
                    );
                  },
                  child: Text("Remember the password? Login", style: TextStyle(fontFamily: "Manrope", fontSize: 16, fontWeight: FontWeight.w700, color: Color.fromRGBO(87, 51, 83, 1)))
                )
              )
            ]
          )
        )
      )
    );
  }
}