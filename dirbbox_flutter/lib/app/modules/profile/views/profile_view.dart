import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        elevation: 0,//digunakan untuk menghapus elevate/block judul yang timbul
        backgroundColor: Color(0xFFF2F2F2),
        leading: IconButton(//leading adalah untuk tombol yang akan menjadi panduan user dalam menggunakan apl
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, 
          color: Color(0xFF22215B)),
        ),
        title: const Text('My Profile', 
        style: TextStyle(
          color: Color(0xFF22215B)),
          ),
        centerTitle: true, //untuk membuat judul berada ditengah(align center)
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.more_horiz,
            color: Color(0xFF22215B))
          ),
        ],
      ),
      body: ListView( //parent list view yang akan memblock dari ujung ke ujung secara horizontal
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),//margin ini utk membatasi block listview, sisi kiri & kanan
            padding: EdgeInsets.all(25),//untuk membuat jarak objek dengan batas pinggir container putih secara vertikal dan horizontal
            //height: 275,//jika height ditutup, otomatis ukuran container mengikuti besar objek/tulisan didalamnya
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack( //stack utk membuat banyak tumpukan gambar dan tulisan-tulisan
              children: [
                Column(
                  children: [
                    Container(
                      width:75,//gambar muka yang direkonstruksi ukuran lebarnya
                      height:75,//gambar muka yang direkonstruksi ukuran tingginya
                      child: Image.asset("assets/images/gambarmuka.png",
                      fit: BoxFit.cover //untuk membuat gambar menyesuaikan dengan ukuran boxnya
                      )
                      ),
                    SizedBox(height: 15),
                    Text("Reiynaldo Leonard", style: TextStyle(
                      color: Color(0xFF22215B).withOpacity(0.6),
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text("UI/UX Designer", style: TextStyle(
                    fontSize: 17)),
                    SizedBox(height: 15),
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF22215B).withOpacity(0.6),
                      fontSize: 16)
                    ),
                  ], 
                ),
                Align(
                  alignment: Alignment.topRight, //membuat agar container PRO berada di pojok kanan atas
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF317B),//color tidak boleh berada diluar box decoration
                      borderRadius: BorderRadius.circular(7), //untuk membuat lengkungan pada siku2 container
                    ),
                    child: Center(
                      child: Text(
                        "PRO",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),//untuk memberikan jarak antara tepi layar dan tulisan my folder juga 3 icon
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, //untuk memberikan jarak antara my folder dgn 3 icon
              children: [
                Text("My Folders",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Container(
                  width: 100,//untuk menentukan ukuran jarak antar widget button 3 icon dibawah
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,//memberikan jarak antar 3 icon
                    children: [
                      Image.asset("assets/icons/plus.png"),
                      Image.asset("assets/icons/setting.png"),
                      Image.asset("assets/icons/vectorkanan.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),//mengatur ukuran jarak tepi layar dan container
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,//mengatur jarak antara container
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/folderbiru.png"),
                  title: "Mobile Apps",
                  date: "December 20, 2023",
                  color: Color(0xFF415EB6),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folderkuning.png"),
                  title: "SVG Icons",
                  date: "December 14, 2023",
                  color: Color(0xFFFFB110),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),//mengatur ukuran jarak tepi layar dan container
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,//mengatur jarak antara container
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/foldermerah.png"),
                  title: "Prototypes",
                  date: "November 22, 2023",
                  color: Color(0xFFF45656),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folderbiruawan.png"),
                  title: "Avatars",
                  date: "November 10, 2023",
                  color: Color(0xFF34DEDE),
                ),
              ],
            ),
          ),
           SizedBox(height: 30),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),//untuk memberikan jarak antara tepi layar dan tulisan my folder juga 3 icon
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, //untuk memberikan jarak antara my folder dgn 3 icon
              children: [
                Text("Recent Uploads",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Container(
                  child: Image.asset("assets/icons/sort.png"),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              child: Image.asset("assets/icons/word.png",
              fit: BoxFit.cover)),
            title: Text("Project Docx"),
            subtitle: Text("November 22, 2023"),
          )
        ],
      ),
    );
  }
}

class CardFolder extends StatelessWidget {
  CardFolder({
    Key? key,
    required this.title,
    required this.date,
    required this.color,
    required this.image,
  }) : super(key: key);
  
  final String title;
  final String date;
  final Color color;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),//ukuran jarak tulisan dan tepi box mobile apps
      width: Get.width * 0.4,
      height: 120,
      decoration: BoxDecoration(
      color: color.withOpacity(0.2),//setiap ada box decoration, warna harus didalam decoration
      borderRadius: BorderRadius.circular(20),//untuk membuat siku container Mobile Apps melengkung
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,//membuat rata tengah gambar folder dan text
        crossAxisAlignment: CrossAxisAlignment.start,//membuat rata kiri gambar folder dan text
        children: [
          image,
          SizedBox(height: 15),
          Text(title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: color,
          ),
         ),
         SizedBox(height: 5),
          Text(date),
        ],
      ),
    );
  }
}
