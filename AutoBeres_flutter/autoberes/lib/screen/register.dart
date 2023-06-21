import 'package:aplikasicina/screen/workshop.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            margin: const EdgeInsets.only(top: 50),
            child: Image.asset("assets/images/bglogobig.png"),
      ),
      Text("Ayo daftarkan diri\nAnda sekarang dan nikmati\nfitur-fitur unggulan dari\naplikasi kami",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      ),
      const SizedBox(height: 15),
      Column(
        children: [
          Container(
          padding: EdgeInsets.symmetric(horizontal: 30),//untuk memberikan jarak sisi kiri dan kanan
          child: TextField(
            decoration: InputDecoration(
            labelText: "First Name",
            fillColor: Colors.white,
            filled: true,
             border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15),
                        ),
                    ),
          ),
          ),
          const SizedBox(height: 15),
           Container(
          padding: EdgeInsets.symmetric(horizontal: 30),//untuk memberikan jarak sisi kiri dan kanan
          child: TextField(
            decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            labelText: "Middle Name",
             border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15),
                        ),
                    ),
          ),
          ),
          const SizedBox(height: 15),
      Column(
        children: [
          Container(
          padding: EdgeInsets.symmetric(horizontal: 30),//untuk memberikan jarak sisi kiri dan kanan
          child: TextField(
            decoration: InputDecoration(
            labelText: "Last Name",
            fillColor: Colors.white,
            filled: true,
             border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15),
                        ),
                    ),
          ),
          ),
          const SizedBox(height: 15),
           Container(
          padding: EdgeInsets.symmetric(horizontal: 30),//untuk memberikan jarak sisi kiri dan kanan
          child: TextField(
            decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            labelText: "No Handphone",
             border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15),
                        ),
                    ),
          ),
          ),
         const SizedBox(height: 50),
        SizedBox(
        width: 290,
        height: 60,
        child: ElevatedButton(onPressed: () {
          Navigator.push(
            context,
              MaterialPageRoute(builder: (context) => const WorkShop())
          );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFFD55F),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          child: const Text("Confirm", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )
          )
          ),
      ),
      ]
      ),
    ]
    ),
    ]
    )
    )
    );
  }
}