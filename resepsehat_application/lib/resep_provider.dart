// import 'package:flutter/material.dart';
// import 'package:resepsehat_application/models/resep.dart';

// class ResepProvider with ChangeNotifier {
//   List<Resep> _resepList = [];

//   List<Resep> get resepList => _resepList;

//   void tambahResep(Resep resep) {
//     _resepList.add(resep);
//     notifyListeners();
//   }

//   void hapusResep(Resep resep) {
//     _resepList.remove(resep);
//     notifyListeners();
//   }

//   void updateResep(Resep resep, String newTitle, String newDescription) {
//     final index = _resepList.indexOf(resep);
//     if (index >= 0) {
//       _resepList[index] = resep.copyWith(
//         title: newTitle,
//         description: newDescription,
//       );
//       notifyListeners();
//     }
//   }

//   // Implementasikan method lainnya sesuai kebutuhan

//   // Misalnya, method untuk mengambil resep berdasarkan ID
//   Resep getResepById(int id) {
//     return _resepList.firstWhere((resep) => resep.id == id, orElse: () => null);
//   }
// }
