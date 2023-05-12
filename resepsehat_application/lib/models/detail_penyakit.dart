// import 'package:flutter/material.dart';
// import 'package:resepsehat_application/models/penyakit.dart';

// class KumpulanPenyakit extends StatelessWidget {
//   final List<Penyakit> penyakitList = fetchPenyakitList(); // Ambil daftar resep dari file resep.dart

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Detail Penyakit"),
//       ),
//       body: ListView.builder(
//         itemCount: penyakitList.length,
//         itemBuilder: (BuildContext context, int index) {
//           Penyakit penyakit = penyakitList[index];
//           return ListTile(
//             title: Text(penyakit.title),
//             onTap: () {
//               Navigator.push(context, MaterialPageRoute(builder: (context) {
//                 return DetailPenyakit(penyakit: penyakit);
//               }));
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class DetailPenyakit extends StatelessWidget {
//   final Penyakit penyakit;

//   const DetailPenyakit({required this.penyakit});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Detail Penyakit"),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 16),
//             Text(
//               "Judul:",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               penyakit.title,
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 16),
//             Text(
//               "Deskripsi:",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               penyakit.deskripsi,
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 16),
//             Text(
//               "gejala:",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               penyakit.gejala,
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 16),
//             Text(
//               "penyebab:",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               penyakit.penyebab,
//               style: TextStyle(fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
