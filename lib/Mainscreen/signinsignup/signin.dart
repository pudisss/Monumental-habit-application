import "package:flutter/material.dart";
import "signup.dart";
import "forgotpsw.dart";

class Signin extends StatelessWidget {
  @override 

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/signinbackground.png")
          )
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromRGBO(255, 255, 255, 0.4),
          
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Spacer(),
                
                Container(
                  
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color.fromRGBO(255, 243, 233, 1),Color.fromRGBO(255, 243, 233, 0)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    )
                  ),
                  child: Container(
                    alignment: Alignment.center,

                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Text("Welcome to", style: TextStyle(fontFamily: "Klasik", fontSize: 32, fontWeight: FontWeight.normal, color: Color.fromRGBO(87, 51, 83, 1))),
                              Text("Monumental habits", style: TextStyle(fontFamily: "Klasik", fontSize: 32, fontWeight: FontWeight.normal, color: Color.fromRGBO(87, 51, 83, 1)))
                            ]
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                                width: 374,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),

                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/images/Google Icon.png"),
                                      Text("Continue with Google", style: TextStyle(fontFamily: "Manrope", fontWeight: FontWeight.w700,color: Color.fromRGBO(87, 51, 83, 1)))
                                    ]
                                  )
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                                width: 374,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),

                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/images/Vector.png"),
                                      Text("Continue with Facebook", style: TextStyle(
                                        fontFamily: "Manrope",
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(87, 51, 83, 1)

                                      ))
                                    ]
                                  )
                                )
                              )

                            ]
                          )
                        )
                      ]
                    )
                  ),

                ),
                
                Container(
                  alignment: Alignment.bottomCenter,
                  
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Text("Log in with email", style: TextStyle(fontFamily: "Manrope", fontWeight: FontWeight.normal, fontStyle: FontStyle.normal, fontSize: 16)),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 374,
                                height: 56,
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.email),
                                    border: InputBorder.none,
                                    filled: true,
                                    
                                    fillColor: Color.fromRGBO(255, 246, 237, 1),
                                    hintText: "Email",
                                    hintStyle: TextStyle(
                                      fontFamily: "Manrope",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color.fromRGBO(253, 167, 88, 1)
                                      
                                    )

                                  )
                                )
                              ),
                              SizedBox(
                                width: 374,
                                height: 56,
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.password),
                                    border: InputBorder.none,
                                    filled: true,
                                    
                                    fillColor: Color.fromRGBO(255, 246, 237, 1),
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                      fontFamily: "Manrope",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color.fromRGBO(253, 167, 88, 1)
                                      
                                    )

                                  )
                                )
                              ),
                              
                            ]
                          )
                        ),
                        Container(
                          child: GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                              width: 374,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(253, 167, 88, 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: Text("Login", style: TextStyle(fontFamily: "Manrope", fontSize: 16, fontWeight: FontWeight.bold))
                              )
                            )
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Forgotpassword()
                                )
                              );
                            },
                            child: Text("Forgot your Password?", style: TextStyle(fontFamily: "Manrope", fontSize: 14, color: Color.fromRGBO(87, 51, 83, 1)))
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Signup()
                                )
                              );
                            },
                            child: Text("Don't have an account? Signup", style: TextStyle(fontFamily: "Manrope", fontSize: 14, color: Color.fromRGBO(87, 51, 83, 1)))
                          )
                        )
                      ]
                    )
                  )

                  

                )
              ]
            )
          )
        )
      )
    );
  }
}