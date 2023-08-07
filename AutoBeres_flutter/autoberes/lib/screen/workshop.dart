import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkShop extends StatelessWidget {
  const WorkShop({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              width: 200,
              height: 200,
              child: Image.asset("assets/images/fotosaya.png"),
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //color: Colors.amber,
              ),
            ),
            SizedBox(height: 10),
            Text("Reiynaldo Leonard",
            style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            ),
            ),
             Text("reyreyleonard@gmail.com",
            style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.person_2_outlined,
                size: 30,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
              style: TextStyle(
              fontSize: 15 ,
              color: Colors.white,
              ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.chat_sharp,
                size: 30,
                color: Colors.white,
              ),
              title: Text(
                "Chat",
              style: TextStyle(
              fontSize: 15 ,
              color: Colors.white,
              ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.group,
                size: 30,
                color: Colors.white,
              ),
              title: Text(
                "Group",
              style: TextStyle(
              fontSize: 15 ,
              color: Colors.white,
              ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.forum,
                size: 30,
                color: Colors.white,
              ),
              title: Text(
                "Forum",
              style: TextStyle(
              fontSize: 15 ,
              color: Colors.white,
              ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.accessibility,
                size: 30,
                color: Colors.white,
              ),
              title: Text(
                "Contact Us!",
              style: TextStyle(
              fontSize: 15 ,
              color: Colors.white,
              ),
              ),
            ),
            ListTile(
            contentPadding: EdgeInsets.only(top: 150, left: 15),
             leading : Icon(
                Icons.logout,
                size: 30,
                color: Colors.white,
              ),
              title: Text(
                "Log Out",
              style: TextStyle(
              fontSize: 15 ,
              color: Colors.white,
              ),
              ),
            ),
        ]
        )
       ),
      appBar: AppBar(
        backgroundColor: Colors.black,
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
          bottomNavigationBar: BottomAppBar(
            color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.home),
              onPressed: () {
                // Tambahkan aksi yang diinginkan di sini
              },
            ),
             IconButton(
              color: Colors.white,
              icon: Icon(Icons.recent_actors_rounded),
              onPressed: () {
                // Tambahkan aksi yang diinginkan di sini
              },
            ),
             IconButton(
              color: Colors.white,
              icon: Icon(Icons.design_services),
              onPressed: () {
                // Tambahkan aksi yang diinginkan di sini
              },
            ),
             IconButton(
              color: Colors.white,
              icon: Icon(Icons.chat),
              onPressed: () {
                // Tambahkan aksi yang diinginkan di sini
              },
            ),
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.person),
              onPressed: () {
                // Tambahkan aksi yang diinginkan di sini
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Tambahkan aksi yang diinginkan di sini
        },
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
                  ListView(
                    padding: EdgeInsets.symmetric(vertical:35),
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          width:300,//gambar muka yang direkonstruksi ukuran lebarnya
                          height:300,//gambar muka yang direkonstruksi ukuran tingginya
                          child: Stack(
                          children: [
                            Image.asset("assets/images/montircewe.png"),
                            Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset("assets/icons/module.png"),
                                  ),
                                Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Modules",
                                      style: TextStyle(
                                      color: Colors.yellow,
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
                            ],
                          ),
           ),
                      SizedBox(height: 20),
           Container(
                          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                          width:300,//gambar muka yang direkonstruksi ukuran lebarnya
                          height:300,//gambar muka yang direkonstruksi ukuran tingginya
                          child: Stack(
                          children: [
                            Image.asset("assets/images/montircowo.png"),
                            Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset("assets/icons/jam.png"),
                                  ),
                                Column(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text
                                    ("Reminder",
                                      style: TextStyle(
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17
                                      ),
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
                            ],
                          ),
           ),
           SizedBox(height: 20),
           Container(
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          width:300,//gambar muka yang direkonstruksi ukuran lebarnya
                          height:300,//gambar muka yang direkonstruksi ukuran tingginya
                          child: Stack(
                          children: [
                            Image.asset("assets/images/montircewe.png"),
                            Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset("assets/icons/module.png"),
                                  ),
                                Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Modules",
                                      style: TextStyle(
                                      color: Colors.yellow,
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
                            ],
                          ),
           ),
                    ],
                  ),
           ],                                                        
      ),
      )
    );
  }
}