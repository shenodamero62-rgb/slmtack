import 'package:flutter/material.dart';

class Onboard2 extends StatefulWidget {
  const Onboard2({super.key});

  @override
  State<Onboard2> createState() => _Onboard2State();
}

class _Onboard2State extends State<Onboard2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Who are you?",
          style: TextStyle(
            fontFamily: "vexa2",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("signin");
                },
                child: Container(
                  child: Image.asset("assets/images/nurse.png", width: 180),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Text(
                  "Nurse",
                  style: TextStyle(fontFamily: "Suwannaphum", fontSize: 30),
                ),
              ),
              SizedBox(height: 80),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("signin");
                },
                child: Container(
                  child: Image.asset("assets/images/nurse.png", width: 180),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Text(
                  "Patient",
                  style: TextStyle(fontFamily: "Suwannaphum", fontSize: 30),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
