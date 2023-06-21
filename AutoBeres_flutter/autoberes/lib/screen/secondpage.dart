import 'package:aplikasicina/screen/thirdpage.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
    body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        image: const DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.fill, 
        )
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 250, top: 40),
            child: Image.asset("assets/images/bglogo.png"),
      ),
      const SizedBox(height: 35),
      RichText(
        text: const TextSpan(
          children:[
            TextSpan(text: "The ultimate ", style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            ),
            TextSpan(text: "vehicle\n", style: TextStyle(
              color: Color(0xFFFFD55F),
              fontSize: 32,
              fontWeight: FontWeight.bold,
            )
            ),
            TextSpan(text: "care ", style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w500,
            )
            ),
            TextSpan(text: "solution", style: TextStyle(
              color: Color(0xFFFFD55F),
              fontSize: 32,
              fontWeight: FontWeight.bold,
            )
            ),
          ])
      ),
        const SizedBox(height: 40),
      SizedBox(
        width: 300,
        height: 300,
        child: Image.asset("assets/images/montir1.png"),
      ),
      const SizedBox(height: 80),
      SizedBox(
        width: 210,
        height: 60,
        child: ElevatedButton(onPressed: () {
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ThirdPage()),
            );
        },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFFD55F),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          child: const Text("Next", style: TextStyle( 
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )
          )
          ),
      ),
      const SizedBox(height: 20),
      Text("privacy policy", style: TextStyle(
        color: Colors.white.withOpacity(0.6),
      )),
      ],
      ),
      ),
    );
  }
}