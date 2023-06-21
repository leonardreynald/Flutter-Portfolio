import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background
          Container(
            width: Get.width,
            child: Image.asset(
            "assets/images/bgawan.png",
            fit: BoxFit.cover,//gambar memenuhi box container
            ),
          ),
          //layer body
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,//untuk meletakan container dirbbox ke bagian awal/start/paling kiri
              children: [
                SizedBox(height:100), //box yang ditentukan letak tinggi atau lebar dalam sebuah layar
                Container(
                  width: 200, //lebar gambar terhadap box
                  height: 200, //tinggi gambar terhadap box 
              //width: Get.width,//lebar maksimum
                  child: Image.asset(
                    "assets/images/pic1.png",
                    fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20),//untuk memberikan jarak spasi antara gambar dan text welcome 
            Text("Welcome to ", style: TextStyle(fontSize: 22)),
            Text("Dirbbox", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),//untuk memberikan jarak spasi antara text best cloud dan text dirbbox
            Container(
              width: 250,
              child: Text("Best cloud storage platform for all business and individuals to manage there data\n\nJoin For Free!",
              style: TextStyle(fontSize: 15))
              ),
              SizedBox(height: 30),//untuk memberikan jarak spasi antara text join free dan button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,//untuk memberikan jarak antar button dan memberikan rata kiri dan kanan
                children: [
                  ElevatedButton(onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, //untuk memberi jarak antar finger dan tulisan smart ID
                    children: [
                      Image.asset("assets/icons/fgrprint.png"),
                      SizedBox(width: 10), //ukuran jarak antar finger dan smart ID
                      Text("Smart ID", 
                      style: TextStyle(
                        color:Color(0xFF567DF4),//warna text Smart ID
                        fontSize: Checkbox.width)),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                  primary: Color(0xFFEEF7FE),//warna button Smart ID//.withOpacity(0.4),//opacity mengatur kegelapan warna
                  // padding: EdgeInsets.symmetric( //untuk menambah ukuran tombol
                  //   horizontal: 40, //ukuran yang ditambah secara horizontal
                  //   vertical: 12, //ukuran yang ditambah secara vertikal
                  fixedSize: Size(150, 50),//fixedsize adalah pengganti padding untuk menyamakan kedua ukuran box tombol
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))//utk memberikan lengkungan pada button
                  ),
                  ),
                  ElevatedButton(onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, //untuk memberi jarak antar finger dan tulisan smart ID
                    children: [
                      Text(
                        "SIGN IN",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      //Icon(Icons.arrow_forward),//jika mau membuat icon panah manual
                      Image.asset("assets/icons/panah-kanan.png"),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                  primary: Color(0xFF567DF4),//.withOpacity(0.1),//opacity mengatur kegelapan warna
                  // padding: EdgeInsets.symmetric( //untuk menambah ukuran tombol
                  //   horizontal: 40, //ukuran yang ditambah secara horizontal
                  //   vertical: 12, //ukuran yang ditambah secara vertikal
                  fixedSize: Size(150, 50),//fixedsize adalah pengganti padding untuk menyamakan kedua ukuran box tombol
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))//utk memberikan lengkungan pada button
                  ),
                  ),
              ],
            ),
            SizedBox(height: 60),//untuk memberikan jarak spasi antara button dan text use social login
            Center(child: Text("Use Social Login?", 
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16))),
            SizedBox(height: 50),//untuk memberikan jarak spasi antara text join free dan button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/ig.png"),
                SizedBox(width: 50),//untuk memberikan jarak antara box ig dgn box twitter
                Image.asset("assets/images/twtr.png"),
                SizedBox(width: 50),//untuk memberikan jarak antara box twitter dgn box fb
                Image.asset("assets/images/fb.png"),  

              ],
              
                ),
              SizedBox(height: 80),//untuk memberikan jarak spasi antara button dan text use social login
              Center(child: Text("create an account", 
              style: TextStyle(fontSize: 16))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
