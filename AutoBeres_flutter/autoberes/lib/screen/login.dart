import 'package:aplikasicina/screen/register.dart';
import 'package:aplikasicina/screen/workshop.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
            margin: const EdgeInsets.only(top: 100),
            child: Image.asset("assets/images/bglogo.png"),
      ),
      const SizedBox(height: 20),
      const Text("Welcome back, Yo've been\nmissed!", 
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),),
      const SizedBox(height: 15),
      Column(
        children: [
          Container(
          padding: EdgeInsets.symmetric(horizontal: 30),//untuk memberikan jarak sisi kiri dan kanan
          child: TextField(
            decoration: InputDecoration(
            labelText: "Email",
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
            labelText: "Password",
             border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15),
                        ),
                    ),
          ),
          ),
          SizedBox(height: 20),
          Text("Forgot Password?", style: TextStyle(
            color: Colors.white,
          )),
          SizedBox(height: 20),
          SizedBox(
        width: 330,
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
          child: const Text("Sign In", style: TextStyle( 
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )
          )
          ),
      ),
      SizedBox(height: 20),
          Text("Or", style: TextStyle(
            color: Colors.white,
          ),
          ),
          SizedBox(height: 20),
          SizedBox(
        width: 330,
        height: 60,
        child: ElevatedButton(onPressed: () {
          // Navigator.push(
          //     context,
              //MaterialPageRoute(builder: (context) => const SecondPage()),
        },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF5B5B5B),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          ),
          child: const Text("Sign With Google", style: TextStyle( 
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )
          )
          ),
      ),
      SizedBox(height: 20),
          SizedBox(
        width: 330,
        height: 60,
        child: ElevatedButton(onPressed: () {
          // Navigator.push(
          //     context,
              //MaterialPageRoute(builder: (context) => const SecondPage()),
        },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF5B5B5B),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          ),
          child: const Text("Sign With Apple", style: TextStyle( 
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )
          )
          ),
      ),
      SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(0),
            child: TextButton(
              style: TextButton.styleFrom(
                 padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                 textStyle: TextStyle(fontSize: 13),
                 primary: Colors.white,
              ),
              child: Text("Don't Have an Account? Sign Up", 
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
              onPressed: () {
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Register()),
            );
            },
              )
            )
        ],
      ),
      ]
      ),
      )
    );
  }
}