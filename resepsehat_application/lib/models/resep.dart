class ResepList {
  String title,
      description,
      image,
      bahan,
      pembuatan,
      waktu,
      kategori,
      penyajian;

  ResepList(
      {required this.title,
      required this.description,
      required this.image,
      required this.bahan,
      required this.pembuatan,
      required this.waktu,
      required this.kategori,
      required this.penyajian});
}

List<ResepList> fetchResepList() {
  return [
    ResepList(
        title: 'Tumis Buncis Ayam Sehat',
        waktu: "Persiapan 10 menit, memasak 10-15 menit",
        kategori: 'Makanan utama',
        penyajian: 'Sajikan tumis buncis ayam sehat dengan nasi merah hangat atau sebagai lauk-pauk dalam hidangan utama',
        description:
            'Tumisan lezat yang cocok untuk penderita diabetes, maag, asam urat, dan kolesterol.',
        image: 'assets/images/tumis-buncis.jpg',
        bahan:
            '200 gram daging ayam tanpa kulit, potong kecil\n150 gram buncis, potong-potong\n1 buah wortel, iris tipis\n1 buah paprika merah, potong dadu\n1 buah bawang bombay, iris tipis\n2 siung bawang putih, cincang halus\n1 sendok makan minyak zaitun\n2 sendok makan saus tiram rendah garam\n1 sendok makan kecap manis rendah garam\n1/2 sendok teh merica bubuk\nGaram secukupnya',
        pembuatan:
            'Panaskan minyak zaitun di wajan dengan api sedang.\nTumis bawang putih dan bawang bombay hingga harum.\n1 Masukkan potongan ayam, tumis hingga berubah warna menjadi kecokelatan.\n1 Tambahkan wortel, buncis, dan paprika merah. Aduk rata dan masak selama 3-4 menit.\n2 Tuang saus tiram, kecap manis, merica bubuk, dan garam. Aduk merata dan masak selama 2-3 menit lagi hingga semua bahan matang.\n1 Angkat dan siap disajikan.'),
    ResepList(
        title: 'Salad Sayuran Panggang',
        waktu: "Persiapan 15 menit, memasak 20 menit",
        kategori: 'Salad',
        penyajian: 'Sajikan salad sayuran panggang ini sebagai hidangan utama atau sebagai sampingan dalam makanan sehat Anda.',
        description:
            'Salad segar dengan sayuran panggang yang cocok untuk penderita diabetes, maag, asam urat, dan kolesterol.',
        image: 'assets/images/salad-sayuran.jpg',
        bahan:
            '2 buah paprika, potong dadu\n1 buah zucchini, potong bulat tipis\n1 buah terong ungu, potong dadu\n1 buah bawang bombay, potong-potong\n200 gram bayam segar\n100 gram keju rendah lemak, parut\n2 sendok makan minyak zaitun\n2 sendok makan cuka apel\n1 sendok teh madu\n1/2 sendok teh bubuk bawang putih\n1/2 sendok teh garam\n1/4 sendok teh merica bubuk',
        pembuatan:
            'Panaskan oven pada suhu 200°C.\nSiapkan loyang panggang dan beri alas dengan kertas roti.\nSusun paprika, zucchini, terong, dan bawang bombay di atas loyang panggang.\nPanggang sayuran selama 15-20 menit atau hingga sayuran matang dan agak kecokelatan.\nSementara itu, siapkan dressing salad dengan mencampur minyak zaitun, cuka apel, madu, bubuk bawang putih, garam, dan merica bubuk dalam mangkuk kecil.\nSetelah sayuran panggang matang, biarkan dingin sejenak.\nDi dalam mangkuk besar, campurkan bayam segar, sayuran panggang, dan keju parut.\nTambahkan dressing salad dan aduk hingga rata.\nSajikan salad sayuran panggang segar ini.'),
    ResepList(
        title: 'Salmon Panggang dengan Sayuran Hijau',
        waktu: "Persiapan 10 menit, memasak 15-20 menit",
        kategori: 'Makanan Utama',
        penyajian: 'Sajikan salmon panggang dengan sayuran hijau ini sebagai hidangan utama dengan nasi merah atau sebagai bagian dari hidangan salad hijau yang segar',
        description:
            'Hidangan gizi tinggi dengan salmon panggang dan sayuran hijau yang cocok untuk penderita diabetes, maag, asam urat, dan kolesterol.',
        image: 'assets/images/salmon-panggang.png',
        bahan:
            '2 potong fillet salmon\n200 gram brokoli, dipotong-potong\n1 zucchini, dipotong bulat tipis\n1 bawang bombay, iris tipis\n2 siung bawang putih, cincang halus\n2 sendok makan minyak zaitun\n1 sendok teh jus lemon\n1 sendok teh bubuk bawang putih\n1/2 sendok teh garam\n1/4 sendok teh merica bubuk',
        pembuatan:
            'Panaskan oven pada suhu 200°C.\nSiapkan loyang panggang dan beri alas dengan kertas roti.\nLetakkan fillet salmon di atas loyang panggang.\nDi dalam mangkuk kecil, campurkan minyak zaitun, jus lemon, bubuk bawang putih, garam, dan merica bubuk. Aduk rata.\nOleskan campuran minyak zaitun pada fillet salmon.\nTambahkan brokoli, zucchini, bawang bombay, dan bawang putih di sekitar salmon.\nPanggang dalam oven selama 15-20 menit atau hingga salmon matang dan sayuran lembut.\nAngkat dari oven dan sajikan.'),
    ResepList(
        title: 'Sup Ayam Sayuran',
        waktu: "Persiapan 15 menit, memasak 30 menit",
        kategori: 'Sup',
        penyajian: 'ajikan sup ayam sayuran ini hangat sebagai hidangan utama dengan nasi merah atau roti gandum untuk makan siang atau makan malam.',
        description:
            'Sup sehat yang mengandung ayam dan berbagai sayuran, cocok untuk penderita diabetes, maag, asam urat, dan kolesterol.',
        image: 'assets/images/sup-ayam.jpg',
        bahan:
            '2 potong dada ayam, potong dadu\n1 wortel, iris tipis\n1 batang seledri, iris tipis\n1 bawang bombay, cincang halus\n2 siung bawang putih, cincang halus\n1/2 paprika hijau, potong dadu\n1/2 paprika merah, potong dadu\n4 gelas kaldu ayam rendah garam\n1 sendok teh minyak zaitun\n1 sendok makan kecap rendah garam\n1/2 sendok teh merica bubuk\nGaram secukupnya',
        pembuatan:
            'Panaskan minyak zaitun dalam panci besar. Tumis bawang putih dan bawang bombay hingga harum.\nMasukkan potongan dada ayam, tumis hingga berubah warna menjadi kecokelatan.\nTambahkan wortel, seledri, paprika hijau, dan paprika merah. Aduk rata.\nTuang kaldu ayam ke dalam panci. Biarkan mendidih.\nSetelah mendidih, kecilkan api dan biarkan sup mendidih perlahan selama sekitar 20-25 menit atau hingga sayuran dan ayam matang.\nTambahkan kecap, merica bubuk, dan garam secukupnya. Aduk rata dan masak selama 2-3 menit lagi.\nAngkat sup dari kompor dan sajikan.'),
  ];
}
