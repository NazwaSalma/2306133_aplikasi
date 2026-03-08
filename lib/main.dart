import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],

        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 40, 143, 198),
          leading: Icon(Icons.home),
          title: Text("Artikel Berita Terkini"),
        ),

        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// Judul Artikel
                Row(
                  children: [
                    Icon(Icons.archive),
                    SizedBox(width: 8),
                    Text(
                      "Wisata Alam Gunung Bromo",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 40, 143, 198),
                      ),
                    )
                  ],
                ),

                SizedBox(height: 15),

                /// CARD ARTIKEL
                Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(15),
                        ),
                        child: Image.network(
                          "data:image/jpeg;base64,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",
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Gunung Bromo adalah salah satu gunung berapi terkenal di Indonesia yang berada di Jawa Timur dan termasuk dalam kawasan Taman Nasional Bromo Tengger Semeru. Gunung ini memiliki pemandangan yang sangat indah dengan hamparan lautan pasir yang luas serta panorama matahari terbit yang menjadi daya tarik utama bagi wisatawan. Selain keindahan alamnya, Gunung Bromo juga memiliki nilai budaya karena masyarakat Suku Tengger masih menjalankan tradisi upacara Yadnya Kasada setiap tahunnya.",
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(height: 20),

                /// JUDUL KOMENTAR
                Row(
                  children: [
                    Icon(Icons.comment),
                    SizedBox(width: 8),
                    Text(
                      "Komentar",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 40, 143, 198),
                      ),
                    )
                  ],
                ),

                SizedBox(height: 10),

                /// CARD KOMENTAR 1
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Nazwa Salma"),
                    subtitle: Text(
                        "Pemandangan Gunung Bromo sangat indah dan menakjubkan."),
                  ),
                ),

                /// CARD KOMENTAR 2
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Jihan Salsabila"),
                    subtitle: Text(
                        "Saya ingin berkunjung ke Gunung Bromo suatu hari nanti."),
                  ),
                ),

                /// CARD KOMENTAR 3
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Rahma Syifa"),
                    subtitle: Text(
                        "Gunung Bromo adalah salah satu wisata favorit di Indonesia."),
                  ),
                ),

                /// CARD KOMENTAR 4
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Mutiara"),
                    subtitle: Text(
                        "Recommend banget liburan ke gunung bromo nihh."),
                  ),
                ),

                /// CARD KOMENTAR 5
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Anneke Vidya"),
                    subtitle: Text(
                        "Harus sii sekali seumur hidup ke gunung bromo."),
                  ),
                ),

                /// CARD KOMENTAR 6
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Dini Okta"),
                    subtitle: Text(
                        "Wish List tahun ini sii ke gunung bromo."),
                  ),
                ),

                /// CARD KOMENTAR 7
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Hasan"),
                    subtitle: Text(
                        "Emang Bagus banget tauu pemandangannya."),
                  ),
                ),

                /// CARD KOMENTAR 8
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Dimas Hendra"),
                    subtitle: Text(
                        "Pengen lagi deh ke gunung bromo, ga akan pernah ngebosenin sii."),
                  ),
                ),

                /// CARD KOMENTAR 9
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Sep Naufal"),
                    subtitle: Text(
                        "harus banget sii kalian kesana seru pwoll."),
                  ),
                ),

                /// CARD KOMENTAR 10
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Nazry Sabiq"),
                    subtitle: Text(
                        "Agendakan ga sii tahun ini kebromo."),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}