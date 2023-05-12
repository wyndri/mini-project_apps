import 'package:flutter/material.dart';
import 'package:resepsehat_application/models/penyakit.dart';

class InformasiPenyakit extends StatelessWidget {
  final List<Penyakit> penyakitList;

  InformasiPenyakit({required this.penyakitList});

  @override
  Widget build(BuildContext context) {
    print(penyakitList.length); // Tambahkan ini untuk memeriksa panjang list penyakit

    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Penyakit'),
      ),
      body: ListView.builder(
        itemCount: penyakitList.length,
        itemBuilder: (context, index) {
          final penyakit = penyakitList[index];
          return ListTile(
            title: Text(penyakit.nama),
            subtitle: Text(penyakit.deskripsi),
          );
        },
      ),
    );
  }
}
