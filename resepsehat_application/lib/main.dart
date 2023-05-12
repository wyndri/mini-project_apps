import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:resepsehat_application/database/database_helper.dart';
import 'package:resepsehat_application/detail_screen.dart';
import 'package:resepsehat_application/informasi_penyakit.dart';
import 'package:resepsehat_application/models/kumpulan_resep.dart';
import 'package:resepsehat_application/models/penyakit.dart';
import 'package:resepsehat_application/models/resep.dart';
import 'package:resepsehat_application/notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resep Sehat',
      theme: ThemeData(
        primaryColor: HexColor("#C9BEE2"),
        hintColor: HexColor("#C9BEE2"),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ResepList> resepList = [];
  List<Penyakit> penyakitList = [];

  @override
  void initState() {
    super.initState();
    _fetchPenyakitList();
    resepList = fetchResepList(); // Ganti dengan pemanggilan fungsi yang sesuai

    // Contoh penambahan data penyakit
    Penyakit penyakit1 = Penyakit(
      id: 1, 
      nama: 'Diabetes', 
      deskripsi: 'Penyakit kronis yang terjadi ketika kadar gula darah tinggi akibat gangguan produksi atau penggunaan insulin.',
      gejala: '- Sering merasa haus dan sering buang air kecil. \n- Kelelahan yang berlebihan. \n- Penurunan berat badan yang tidak dapat dijelaskan. \n- Luka yang sulit sembuh.',
      penyebab: '- Faktor genetik. \n- Obesitas dan gaya hidup tidak sehat. \n- Ketidakseimbangan hormon insulin.',
      pengobatan: '- Pola makan sehat dengan porsi yang terkendali. \n- Olahraga teratur. \n- Penggunaan obat-obatan diabetes. \n- Insulin terapi jika diperlukan.'
      );
    Penyakit penyakit2 = Penyakit(
      id: 2, 
      nama: 'Maag', 
      deskripsi: 'Kondisi yang terjadi ketika lapisan pelindung perut rusak, menyebabkan rasa sakit dan ketidaknyamanan di area perut.',
      gejala: '- Nyeri perut atau sensasi terbakar. \n- Mual dan muntah. \n- Sering bersendawa. \n- Mual setelah makan.',
      penyebab: '- Infeksi bakteri Helicobacter pylori. \n- Konsumsi obat-obatan tertentu. \n- Pola makan tidak teratur. \n- Stres dan kecemasan.',
      pengobatan: '- Perubahan pola makan seperti menghindari makanan pedas dan berlemak. \n- Menghindari pemicu seperti alkohol dan merokok. \n- Penggunaan obat antasida atau penghambat asam. \n- Antibiotik untuk mengatasi infeksi H. pylori jika ada.'
      );
    Penyakit penyakit3 = Penyakit(
      id: 1, 
      nama: 'Asam Urat', 
      deskripsi: 'Kondisi yang terjadi ketika kadar asam urat di dalam tubuh tinggi, menyebabkan pembentukan kristal yang menimbulkan rasa sakit dan peradangan pada sendi.',
      gejala: '- Nyeri dan bengkak pada sendi, terutama di kaki, tangan, dan lutut. \n- Rasa panas pada sendi yang terkena.\n- Kesulitan dalam gerakan sendi.',
      penyebab: '- Kelebihan produksi asam urat dalam tubuh. \n- Ketidakmampuan tubuh mengeluarkan asam urat dengan baik. \n- Pola makan tinggi purin.',
      pengobatan: '- Pola makan rendah purin. \n- Menjaga berat badan ideal. \n- Minum banyak air. \n- Penggunaan obat penurun asam urat jika diperlukan.'
      );
    Penyakit penyakit4 = Penyakit(
      id: 2, 
      nama: 'Kolesterol', 
      deskripsi: 'Lemak waxy yang ditemukan dalam tubuh dan makanan, kadar kolesterol tinggi dapat meningkatkan risiko penyakit jantung dan pembuluh darah.',
      gejala: '- Tidak ada gejala khusus, sering kali tanpa gejala. \n- Tingkat kolesterol tinggi dapat meningkatkan risiko penyakit jantung dan pembuluh darah.',
      penyebab: '- Pola makan tinggi lemak jenuh dan kolesterol. \n- Faktor genetik. \n- Gaya hidup tidak sehat.',
      pengobatan: '- Pola makan rendah purin. \n- Menjaga berat badan ideal. \n- Minum banyak air. \n- Penggunaan obat penurun asam urat jika diperlukan.'
      ); 
    DatabaseHelper.instance.insertPenyakit(penyakit1);
    DatabaseHelper.instance.insertPenyakit(penyakit2);
    DatabaseHelper.instance.insertPenyakit(penyakit3);
    DatabaseHelper.instance.insertPenyakit(penyakit4);
  }

  void _fetchPenyakitList() {
    // Lakukan proses pengambilan data penyakit dari penyakit.dart atau sumber data lainnya
    // Misalnya, dapat menggunakan API, database, atau membaca dari file
    // Setelah mendapatkan data, simpan dalam variabel penyakitList
    penyakitList = getDataFromPenyakit(); // Ganti dengan implementasi pengambilan data penyakit yang sesuai
  }

  List<Penyakit> getDataFromPenyakit() {
    // Implementasi pengambilan data penyakit dari file penyakit.dart atau sumber data lainnya
    // Misalnya, membaca data dari file atau mengambil data dari database
    // Return daftar penyakit yang telah diambil
    List<Penyakit> penyakitList = [];
    // Contoh pengambilan data penyakit
    Penyakit penyakit1 = Penyakit(
      id: 1, 
      nama: 'Diabetes', 
      deskripsi: 'Penyakit kronis yang terjadi ketika kadar gula darah tinggi akibat gangguan produksi atau penggunaan insulin.',
      gejala: '- Sering merasa haus dan sering buang air kecil. \n- Kelelahan yang berlebihan. \n- Penurunan berat badan yang tidak dapat dijelaskan. \n- Luka yang sulit sembuh.',
      penyebab: '- Faktor genetik. \n- Obesitas dan gaya hidup tidak sehat. \n- Ketidakseimbangan hormon insulin.',
      pengobatan: '- Pola makan sehat dengan porsi yang terkendali. \n- Olahraga teratur. \n- Penggunaan obat-obatan diabetes. \n- Insulin terapi jika diperlukan.'
      );
    Penyakit penyakit2 = Penyakit(
      id: 2, 
      nama: 'Maag', 
      deskripsi: 'Kondisi yang terjadi ketika lapisan pelindung perut rusak, menyebabkan rasa sakit dan ketidaknyamanan di area perut.',
      gejala: '- Nyeri perut atau sensasi terbakar. \n- Mual dan muntah. \n- Sering bersendawa. \n- Mual setelah makan.',
      penyebab: '- Infeksi bakteri Helicobacter pylori. \n- Konsumsi obat-obatan tertentu. \n- Pola makan tidak teratur. \n- Stres dan kecemasan.',
      pengobatan: '- Perubahan pola makan seperti menghindari makanan pedas dan berlemak. \n- Menghindari pemicu seperti alkohol dan merokok. \n- Penggunaan obat antasida atau penghambat asam. \n- Antibiotik untuk mengatasi infeksi H. pylori jika ada.'
      );
    Penyakit penyakit3 = Penyakit(
      id: 1, 
      nama: 'Asam Urat', 
      deskripsi: 'Kondisi yang terjadi ketika kadar asam urat di dalam tubuh tinggi, menyebabkan pembentukan kristal yang menimbulkan rasa sakit dan peradangan pada sendi.',
      gejala: '- Nyeri dan bengkak pada sendi, terutama di kaki, tangan, dan lutut. \n- Rasa panas pada sendi yang terkena.\n- Kesulitan dalam gerakan sendi.',
      penyebab: '- Kelebihan produksi asam urat dalam tubuh. \n- Ketidakmampuan tubuh mengeluarkan asam urat dengan baik. \n- Pola makan tinggi purin.',
      pengobatan: '- Pola makan rendah purin. \n- Menjaga berat badan ideal. \n- Minum banyak air. \n- Penggunaan obat penurun asam urat jika diperlukan.'
      );
    Penyakit penyakit4 = Penyakit(
      id: 2, 
      nama: 'Kolesterol', 
      deskripsi: 'Lemak waxy yang ditemukan dalam tubuh dan makanan, kadar kolesterol tinggi dapat meningkatkan risiko penyakit jantung dan pembuluh darah.',
      gejala: '- Tidak ada gejala khusus, sering kali tanpa gejala. \n- Tingkat kolesterol tinggi dapat meningkatkan risiko penyakit jantung dan pembuluh darah.',
      penyebab: '- Pola makan tinggi lemak jenuh dan kolesterol. \n- Faktor genetik. \n- Gaya hidup tidak sehat.',
      pengobatan: '- Pola makan rendah purin. \n- Menjaga berat badan ideal. \n- Minum banyak air. \n- Penggunaan obat penurun asam urat jika diperlukan.'
      ); 
    penyakitList.add(penyakit1);
    penyakitList.add(penyakit2);
    penyakitList.add(penyakit3);
    penyakitList.add(penyakit4);
    return penyakitList;
  }


  
  Widget _buildDrawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
          child: Text(
            'Resep Sehat',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.pop(context); // Close the drawer
            // Add your own action
          },
        ),
        ListTile(
          leading: Icon(Icons.receipt),
          title: Text('Kumpulan Resep Sehat'),
          onTap: () {
            Navigator.pop(context); // Tutup drawer
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return KumpulanResep(); // Navigasi ke halaman KumpulanResep
            }));
          },
        ),
        ListTile(
          leading: Icon(Icons.health_and_safety),
          title: Text('Informasi Penyakit'),
          onTap: () {
            Navigator.pop(context); // Close the drawer
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return InformasiPenyakit(penyakitList: penyakitList); // Navigasi ke halaman InformasiPenyakit
            }));
          },
        ),
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#C9BEE2"),
      appBar: AppBar(
        elevation: 0,
        title: Text("Resep Sehat"),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Notifikasi();
              }));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              "apa yang ingin kamu masak hari ini",
              style: TextStyle(
                color: Colors.white,
                fontSize: 29,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "cari",
                hintStyle: TextStyle(color: Colors.white),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              onChanged: (String value) {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              "Rekomendasi makanan sehat untuk kamu :",
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(left: 15),
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return KumpulanResep(); // Navigasi ke halaman KumpulanResep
                }));
              },
              child: Text(
                "Selengkapnya",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                height: 600,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                ),
               ),
          ),
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: resepList.length,
              itemBuilder: (BuildContext context, int index) {
                final ResepList resep = resepList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DetailScreen(resep: resep);
                    }));
                  },
                  child: Container(
                    height: 200,
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                    padding: EdgeInsets.all(8),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.5),
                                BlendMode.luminosity,
                              ),
                              image: AssetImage(resep.image),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 0, 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                resep.title,
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    ),
      drawer: _buildDrawer(),
  );
  }
}