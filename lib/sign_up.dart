import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignInState();
}

class _SignInState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: TextStyle(
            fontFamily: "vexa",
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
                  "Create Your Account",
                  style: TextStyle(
                    fontFamily: "vexa",
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
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
                    hintText: "Name",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 11, 137, 240),
                      fontSize: 16,
                      fontFamily: "",
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
                  // textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Email ",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 11, 137, 240),
                      fontSize: 16,
                      fontFamily: "",
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
                  // textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Phone",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 11, 137, 240),
                      fontSize: 16,
                      fontFamily: "",
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
                  // textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "National number",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 11, 137, 240),
                      fontSize: 16,
                      fontFamily: "",
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
                      fontFamily: "",
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
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 11, 137, 240),
                      fontSize: 16,
                      fontFamily: "Cairo",
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
                  SizedBox(height: 90),
                SizedBox(
                  width: 220,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                        Navigator.of(context).pushNamed("signin");
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color.fromARGB(255, 5, 84, 149),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle( color: Colors.white),
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
