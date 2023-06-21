import 'package:flutter/material.dart';

class Reminder extends StatelessWidget {
  const Reminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(//leading adalah untuk tombol yang akan menjadi panduan user dalam menggunakan apl
        onPressed: () {},
        icon: Icon(Icons.arrow_back_ios, 
        color: Color(0xFFF2F2F2)),
        ),
        title: const Text('Reminder', 
        style: TextStyle(
          color: Color(0xFFF2F2F2),
          ),
          ),
          centerTitle : true,
          actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.bubble_chart_rounded,
            color: Color(0xFFF2F2F2))
          ),
        ],
          ),
        body: Stack( 
          children: [
            Container(
            color: Color(0xFFF2F2F2).withOpacity(0.8),
            width: double.infinity,
            height: double.infinity,
            child: Image.asset("assets/images/background.png",
            fit: BoxFit.cover,
            )
            ),
            Padding(
            padding: const EdgeInsets.symmetric(vertical: 95, horizontal: 30),
            child: Column(
            children: [ 
            Column(
              children: [
                Container(
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                     boxShadow: [
                      BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 2,
                      offset: Offset(0, 5), // arah bayangan (x, y)
                      ),
                    ],
                   ),
                      child: Row(
                        children: [
                          Container (
                          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                          width: 55,
                          height: 55,
                          child: Image.asset("assets/images/gambaroli.png"),
                          ),
                          
                          Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Oil Change", style: TextStyle(
                              fontWeight: FontWeight.bold, 
                              fontSize: 20),),
                            Text("Shop And Drive",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),),
                            Text("Cikampek",
                            textAlign: TextAlign.left, 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),),
                          ]
                      ),
                      SizedBox(width: 50),
                            Column(
                              children: [
                                //Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 50)),
                                Text("23 February 2023",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                                ),
                                SizedBox(height: 50),
                                //Padding(padding: EdgeInsets.symmetric(vertical: 25, horizontal: 83)),
                                Text("02 : 13 : 45 : 33",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                )
                                ),
                              ],
                            ),
                        ],
                      ),
                      ),
                  SizedBox(height: 20),
                  Container(
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                     boxShadow: [
                      BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 2,
                      offset: Offset(0, 5), // arah bayangan (x, y)
                      ),
                    ],
                   ),
                      child: Row(
                        children: [
                          Container (
                          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                          width: 55,
                          height: 55,
                          child: Image.asset("assets/images/radiator.png"),
                          ),
                          Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Radiator Coolant", style: TextStyle(
                              fontWeight: FontWeight.bold, 
                              fontSize: 20),),
                            Text("Shop And Drive",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),),
                            Text("Cikampek",
                            textAlign: TextAlign.left, 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),),
                          ]
                      ),
                      
                            Column(
                              children: [
                                //Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 50)),
                                Text("23 February 2023",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                                ),
                                SizedBox(height: 50),
                                //Padding(padding: EdgeInsets.symmetric(vertical: 25, horizontal: 83)),
                                Text("02 : 13 : 45 : 33",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                )
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  Container(
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                     boxShadow: [
                      BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 2,
                      offset: Offset(0, 5), // arah bayangan (x, y)
                      ),
                    ],
                   ),
                      child: Row(
                        children: [
                          Container (
                          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                          width: 55,
                          height: 55,
                          child: Image.asset("assets/images/radiator.png"),
                          ),
                          Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Axle Oil", style: TextStyle(
                              fontWeight: FontWeight.bold, 
                              fontSize: 20),),
                            Text("Shop And Drive",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),),
                            Text("Cikampek",
                            textAlign: TextAlign.left, 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),),
                          ]
                      ),
                      SizedBox(width: 50),
                            Column(
                              children: [
                                //Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 50)),
                                Text("23 February 2023",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                                ),
                                SizedBox(height: 50),
                                //Padding(padding: EdgeInsets.symmetric(vertical: 25, horizontal: 83)),
                                Text("02 : 13 : 45 : 33",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                )
                                ),
                              ],
                            ),
                        ],
                      ),
                      ),
                      SizedBox(height: 20),
                  Container(
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                     boxShadow: [
                      BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 2,
                      offset: Offset(0, 5), // arah bayangan (x, y)
                      ),
                    ],
                   ),
                      child: Row(
                        children: [
                          Container (
                          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                          width: 55,
                          height: 55,
                          child: Image.asset("assets/images/radiator.png"),
                          ),
                          Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Oil Brake", style: TextStyle(
                              fontWeight: FontWeight.bold, 
                              fontSize: 20),),
                            Text("Shop And Drive",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),),
                            Text("Cikampek",
                            textAlign: TextAlign.left, 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),),
                          ]
                      ),
                      SizedBox(width: 50),
                            Column(
                              children: [
                                //Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 50)),
                                Text("23 February 2023",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                                ),
                                SizedBox(height: 50),
                                //Padding(padding: EdgeInsets.symmetric(vertical: 25, horizontal: 83)),
                                Text("02 : 13 : 45 : 33",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                )
                                ),
                              ],
                            ),
                        ],
                      ),
                      ),
                      SizedBox(height: 10),
                      Container (
                      width: 20, //lebar gambar terhadap box
                      height: 20, //tinggi gambar terhadap box 
                      color: Colors.red,
              ),
              ],
            ),
            ]
            ),
            ),
            Stack(
              children: [
                Container(
                alignment: Alignment.bottomCenter,// Mengatur posisi gambar di bagian bawah
                width: double.infinity,
                height: double.infinity,
                child: Image.asset("assets/images/bgbawah.png"),),
                    Container (
                      padding: EdgeInsets.symmetric(vertical: 100, horizontal: 100),
                      width: 20, //lebar gambar terhadap box
                      height: 20, //tinggi gambar terhadap box 
                      color: Colors.amber,
              ),
          ]
          ),
          ]
          ),
          );
            }
          }