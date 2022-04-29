import "package:flutter/material.dart";
import "signin.dart";

class Signup extends StatelessWidget {
  bool Clicked = false;
  bool Clicked1 = false;
  @override 

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(255, 243, 233, 1),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 48),
                child: Image.asset("assets/images/Create Your Account 2 (1).png")),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text("CREATE AN ACCOUNT", style: TextStyle(fontFamily: "Klasik", fontSize: 24))),
              Container(
                margin: EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    SizedBox(
                      width: 374,
                      height: 56,
                      
                      child: TextField(
                        textAlign: TextAlign.left,
                        
                      
                        decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(fontFamily: "Manrope", fontSize: 16),
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.person),
                          contentPadding: EdgeInsets.all(20)
                          
                          
                        )

                      )
                    ),
                    SizedBox(
                      width: 374,
                      height: 56,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(fontFamily: "Manrope", fontSize: 16),
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.email),
                          contentPadding: EdgeInsets.all(20),
                        )
                      )
                    ),
                    SizedBox(
                      width: 374,
                      height: 56,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(fontFamily: "Manrope", fontSize: 16),
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.password),
                          contentPadding: EdgeInsets.all(20)
                        )
                      )
                    )

                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.centerLeft,

                child: Column(children: [
                  Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Checkbox(
                        activeColor: Color.fromRGBO(253, 167, 88, 1),
                        focusColor: Color.fromRGBO(253, 167, 88, 1),
                        value: Clicked,
                        onChanged: null,
                      )
                    ),
                    Container(
                      child: Text("Keep me sign in", style: TextStyle(fontFamily: "Manrobe", fontSize: 16, color: Color.fromRGBO(87, 51, 83, 1)))
                    )
                  
                  ])),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Checkbox(
                            activeColor: Color.fromRGBO(253, 167, 88, 1),
                            focusColor: Color.fromRGBO(253, 167, 88, 1),
                            value: Clicked1,
                            onChanged: null,
                          )
                        ),
                        Container(
                          child: Text("Email me about special pricing and more", style: TextStyle(fontFamily: 'Manrobe', fontSize: 16, color: Color.fromRGBO(87, 51, 83, 1)))
                        )
                      ]
                    )
                  )
                  
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                child: GestureDetector(
                  child: Container(

                    width: 374,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(253, 167, 88, 1)
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("Create Account", style: TextStyle(fontFamily: "Manrope", fontWeight: FontWeight.w700, fontSize: 16)))
                  )
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset("assets/images/orsigninwith.png")
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/Google Icon.png"),
                            

                          ]
                        )
                      )),
                      
                      Container(
                        margin: EdgeInsets.only(),
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Container(

                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset("assets/images/Vector.png")),
                              
                            ]
                          )
                        )
                      )
                    
            ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signin()
                      )
                    );
                  },
                  child: Text("Already have an account? Signup", style: TextStyle(fontFamily: "Manrope", fontSize: 14, fontWeight: FontWeight.w700, color: Color.fromRGBO(87, 51, 83, 1)))
                )
              )
            ]
          )
        )
      )
    );
  }
}