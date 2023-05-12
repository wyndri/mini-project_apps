class Penyakit {
  int id;
  String nama;
  String deskripsi;
  String gejala;
  String penyebab;
  String pengobatan;

  Penyakit({
    required this.id, 
    required this.nama, 
    required this.deskripsi,
    required this.gejala,
    required this.penyebab,
    required this.pengobatan});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nama': nama,
      'deskripsi': deskripsi,
      'gejala': gejala,
      'penyebab': penyebab,
      'pengobatan': pengobatan
    };
  }
}
