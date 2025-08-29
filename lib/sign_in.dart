import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool usa = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Log In",
          style: TextStyle(
            fontFamily: "vexa2",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Container(
                child: Text(
                  "WeLcome Back",
                  style: TextStyle(
                    fontFamily: "vexa2",
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 80),
            Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 186, 214, 242).withOpacity(0.5),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: TextFormField(
                  // textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Email address",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 11, 137, 240),
                      fontSize: 16,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 186, 214, 242).withOpacity(0.5),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: TextFormField(
                  obscureText: true,
                  // textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 11, 137, 240),
                      fontSize: 16,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Container(
                child: Row(
                  children: [
                    SizedBox(width: 50),
                    Checkbox(
                      activeColor: Colors.black,
                      checkColor: Colors.white,
                      value: usa,
                      onChanged: (val) {
                        setState(() {
                          usa = val ?? false;
                        });
                      },
                    ),
                    Text(
                      "Remember me",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 15, 107, 181),
                        fontSize: 14,
                        fontFamily: "Suwannaphum",
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(0, 4),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      child: MaterialButton(
                        onPressed: () {
                          // Navigator.of(context).pushNamed("");
                        },
                        child: Text(
                          "Did you forget your password?",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                            color: Color.fromARGB(255, 5, 84, 149),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 220,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("home");
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color.fromARGB(255, 5, 84, 149),
                ),
                child: Text(
                  "Log in",
                  style: TextStyle( color: Colors.white),
                ),
              ),
            ),SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 100, height: 2, color: Colors.grey),
                SizedBox(width: 10),
                Text("OR", style: TextStyle(fontSize: 20, fontFamily: "Suwannaphum")),
                SizedBox(width: 10),
                Container(width: 100, height: 2, color: Colors.grey),
              ],
            ),
            SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("signup");
                      },
                      child: Text(
                        "Create an account",
                        style: TextStyle(
                          decorationColor:Color.fromARGB(255, 5, 84, 149),
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: Color.fromARGB(255, 5, 84, 149),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "You don't have an account?",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
