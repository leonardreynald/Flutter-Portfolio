import 'package:flutter/material.dart';

class WorkShop extends StatelessWidget {
  const WorkShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(//leading adalah untuk tombol yang akan menjadi panduan user dalam menggunakan apl
        onPressed: () {},
        icon: Icon(Icons.menu, 
        color: Color(0xFFF2F2F2)),
        ),
        title: RichText(
        text: TextSpan(
          children:[
            TextSpan(text: "A U T O ", style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
            TextSpan(text: "B E R E S", style: TextStyle(
              color: Color(0xFFFFD55F),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )
            )
            ]
            )
            ),
          centerTitle : true,
          actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.search,
            color: Color(0xFFF2F2F2))
          ),
        ],
          ),
           body: Stack(
            children: [
           Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: const DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill, 
            ),
            ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
                    child: Column(
                      children: [
                            Stack(
                              children: [
                                Container(
                                  //margin: EdgeInsets.symmetric(vertical: 40, horizontal: 50),
                                  width:300,//gambar muka yang direkonstruksi ukuran lebarnya
                                  height:300,//gambar muka yang direkonstruksi ukuran tingginya
                                  child: Image.asset("assets/images/montircewe.png",
                                  fit: BoxFit.cover //untuk membuat gambar menyesuaikan dengan ukuran boxnya
                                  )
                                  ),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(vertical: 240),
                                        width: 50,
                                        height: 50,
                                        child: Image.asset("assets/icons/module.png"),
                                      ),
                                      Column(
                                        children: [
                                          Text("Modules",
                                          style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                          ),
                                          Text("Materi belajar yang disusun secara sistematis\ndan terstruktur untuk membantu  memahami\ndasar-dasar perbaikan kendaraan.",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11)
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                    ),
              ],
            ),
                ], 
                ),
               );
  }
}