import 'package:flutter/material.dart';
import 'package:slmtack/model/background.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // خلفية متدرجة
        decoration: const BoxDecoration(
          gradient: AppGradient.blueWhiteBackground,
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 40),
              // الصورة بشكل دائري
              ClipOval(
                child: Image.asset(
                  "assets/images/istockphoto.jpg",
                  width: 350,
                  height: 260,
                  fit: BoxFit.fitHeight,
                ),
              ),
              const SizedBox(height: 40),

              // العنوان
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "مرحبا بك في خدمات التمريض المنزلي مع سلامتك",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: "vexa",
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // الوصف
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "دلوقتي تقدر تلاقي خدمه تمريض منزلي مناسبه ليك بكل سهوله . تطبيقنا بيوصلك بممرضين موهلين علشان تضمن راحه ودعم مهني وانت في بيتك",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),

              const Spacer(), // يخلي الزر ثابت تحت
              // الزر
              SizedBox(
                width: 220,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("Onboard2");
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: const Color.fromARGB(255, 5, 84, 149),
                  ),
                  child: const Text(
                    "إبدء معنا الآن",
                    style: TextStyle(
                      fontFamily: "Cairo",
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
