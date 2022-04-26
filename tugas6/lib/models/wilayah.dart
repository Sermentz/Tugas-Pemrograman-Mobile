class tempat {
  String Gambar() => '-';

  String Deskripsi() => '-';

  String hasilgambar() => '-';

  String hasildeskripsi() => '-';
}

class Desa extends tempat {
  @override
  String Gambar() => 'Desa';

  @override
  String Deskripsi() => 'Desa';

  @override
  String hasilgambar() {
    return 'https://media.discordapp.net/attachments/660886903855513612/968522054011879474/unknown.png?width=253&height=463';
  }

  @override
  String hasildeskripsi() {
    return 'Gambar diatas merupakan gambar peta dari desa mangunjaya';
  }
}

class TPU extends tempat {
  @override
  String Gambar() => 'TPU Mangunjaya';

  @override
  String Deskripsi() => 'TPU Mangunjaya';

  @override
  String hasilgambar() {
    return 'https://cdn.discordapp.com/attachments/660886903855513612/968522255959195698/unknown.png';
  }

  @override
  String hasildeskripsi() {
    return 'Gambar diatas merupakan TPU yang ada di desa mangunjaya';
  }
}

class Kali extends tempat {
  @override
  String Gambar() => 'Kali';

  @override
  String Deskripsi() => 'Kali';

  @override
  String hasilgambar() {
    return 'https://cdn.discordapp.com/attachments/660886903855513612/968522964393926736/unknown.png';
  }

  @override
  String hasildeskripsi() {
    return 'Gambar diatas merupakan foto kalibaru yang ada di desa mangunjaya';
  }
}

class Sekolah extends tempat {
  @override
  String Gambar() => 'Sekolah';

  @override
  String Deskripsi() => 'Sekolah';

  @override
  String hasilgambar() {
    return 'https://cdn.discordapp.com/attachments/660886903855513612/968523251439534160/unknown.png';
  }

  @override
  String hasildeskripsi() {
    return 'Gambar diatas adalah salah satu sekolah yang ada di desa mangunjaya';
  }
}
