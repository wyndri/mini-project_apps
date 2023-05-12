import 'package:flutter/material.dart';
import 'package:resepsehat_application/models/resep.dart';

class KumpulanResep extends StatelessWidget {
  final List<ResepList> resepList = fetchResepList(); // Ambil daftar resep dari file resep.dart

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kumpulan Resep"),
      ),
      body: ListView.builder(
        itemCount: resepList.length,
        itemBuilder: (BuildContext context, int index) {
          ResepList resep = resepList[index];
          return ListTile(
            title: Text(resep.title),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailResep(resep: resep);
              }));
            },
          );
        },
      ),
    );
  }
}

class DetailResep extends StatelessWidget {
  final ResepList resep;

  const DetailResep({required this.resep});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Resep"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(resep.image),
            SizedBox(height: 16),
            Text(
              resep.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Waktu: ${resep.waktu}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              "Kategori: ${resep.kategori}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              "Deskripsi:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              resep.description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              "Bahan-bahan:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              resep.bahan,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              "Cara Pembuatan:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              resep.pembuatan,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              "Penyajian:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              resep.penyajian,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
