import 'dart:io';

class Persegi {
  void hitungLuas() {
    stdout.write("Masukkan panjang sisi persegi:");
    double sisi = double.parse(stdin.readLineSync()!);
    double luas = sisi * sisi;
    print("Luas Persegi: $luas");
  }

  void hitungKeliling() {
    stdout.write("Masukkan panjang sisi persegi:");
    double sisi = double.parse(stdin.readLineSync()!);
    double keliling = 4 * sisi;
    print("Keliling Persegi: $keliling");
  }
}

class PersegiPanjang {
  void hitungLuas() {
    stdout.write("Masukkan panjang persegi panjang:");
    double panjang = double.parse(stdin.readLineSync()!);
    stdout.write("Masukkan lebar persegi panjang:");
    double lebar = double.parse(stdin.readLineSync()!);
    double luas = panjang * lebar;
    print("Luas Persegi Panjang: $luas");
  }

  void hitungKeliling() {
    stdout.write("Masukkan panjang persegi panjang:");
    double panjang = double.parse(stdin.readLineSync()!);
    stdout.write("Masukkan lebar persegi panjang:");
    double lebar = double.parse(stdin.readLineSync()!);
    double keliling = 2 * (panjang + lebar);
    print("Keliling Persegi Panjang: $keliling");
  }
}

class Segitiga {
  void hitungLuas() {
    stdout.write("Masukkan alas segitiga:");
    double alas = double.parse(stdin.readLineSync()!);
    stdout.write("Masukkan tinggi segitiga:");
    double tinggi = double.parse(stdin.readLineSync()!);
    double luas = 0.5 * alas * tinggi;
    print("Luas Segitiga: $luas");
  }

  void hitungKeliling() {
    stdout.write("Masukkan sisi a segitiga:");
    double a = double.parse(stdin.readLineSync()!);
    stdout.write("Masukkan sisi b segitiga:");
    double b = double.parse(stdin.readLineSync()!);
    stdout.write("Masukkan sisi c segitiga:");
    double c = double.parse(stdin.readLineSync()!);
    double keliling = a + b + c;
    print("Keliling Segitiga: $keliling");
  }
}

class Trapesium {
  void hitungLuas() {
    stdout.write("Masukkan panjang sisi a trapesium:");
    double a = double.parse(stdin.readLineSync()!);
    stdout.write("Masukkan panjang sisi b trapesium:");
    double b = double.parse(stdin.readLineSync()!);
    stdout.write("Masukkan tinggi trapesium:");
    double tinggi = double.parse(stdin.readLineSync()!);
    double luas = 0.5 * (a + b) * tinggi;
    print("Luas Trapesium: $luas");
  }

  void hitungKeliling() {
    stdout.write("Masukkan sisi a trapesium:");
    double a = double.parse(stdin.readLineSync()!);
    stdout.write("Masukkan sisi b trapesium:");
    double b = double.parse(stdin.readLineSync()!);
    stdout.write("Masukkan sisi c trapesium:");
    double c = double.parse(stdin.readLineSync()!);
    stdout.write("Masukkan sisi d trapesium:");
    double d = double.parse(stdin.readLineSync()!);
    double keliling = a + b + c + d;
    print("Keliling Trapesium: $keliling");
  }
}

class JajarGenjang {
  void hitungLuas() {
    stdout.write("Masukkan alas jajar genjang:");
    double alas = double.parse(stdin.readLineSync()!);
    stdout.write("Masukkan tinggi jajar genjang:");
    double tinggi = double.parse(stdin.readLineSync()!);
    double luas = alas * tinggi;
    print("Luas Jajar Genjang: $luas");
  }

  void hitungKeliling() {
    stdout.write("Masukkan sisi a jajar genjang:");
    double a = double.parse(stdin.readLineSync()!);
    stdout.write("Masukkan sisi b jajar genjang:");
    double b = double.parse(stdin.readLineSync()!);
    double keliling = 2 * (a + b);
    print("Keliling Jajar Genjang: $keliling");
  }
}

class Lingkaran {
  void hitungLuas() {
    stdout.write("Masukkan jari-jari lingkaran:");
    double r = double.parse(stdin.readLineSync()!);
    double luas = 3.14 * r * r;
    print("Luas Lingkaran: $luas");
  }

  void hitungKeliling() {
    stdout.write("Masukkan jari-jari lingkaran:");
    double r = double.parse(stdin.readLineSync()!);
    double keliling = 2 * 3.14 * r;
    print("Keliling Lingkaran: $keliling");
  }
}

void main() {
  print("======================================");
  print("    Selamat Datang di BangunDatarKu   ");
  print("======================================");
  print("Pilih Bangun Datar:");
  print("1. Persegi");
  print("2. Persegi Panjang");
  print("3. Segitiga");
  print("4. Trapesium");
  print("5. Jajar Genjang");
  print("6. Lingkaran");
  stdout.write("Masukkan pilihan (1-6): ");
  String? bangunDatar = stdin.readLineSync();

  print("\nPilih operasi yang ingin dilakukan:");
  print("1. Hitung Luas");
  print("2. Hitung Keliling");
  stdout.write("Masukkan pilihan (1-2): ");
  String? operasi = stdin.readLineSync();

  switch (bangunDatar) {
    case '1':
      Persegi persegi = Persegi();
      if (operasi == '1') {
        persegi.hitungLuas();
      } else if (operasi == '2') {
        persegi.hitungKeliling();
      } else {
        print("Pilihan operasi tidak valid!");
      }
      break;
    case '2':
      PersegiPanjang pp = PersegiPanjang();
      if (operasi == '1') {
        pp.hitungLuas();
      } else if (operasi == '2') {
        pp.hitungKeliling();
      } else {
        print("Pilihan operasi tidak valid!");
      }
      break;
    case '3':
      Segitiga segitiga = Segitiga();
      if (operasi == '1') {
        segitiga.hitungLuas();
      } else if (operasi == '2') {
        segitiga.hitungKeliling();
      } else {
        print("Pilihan operasi tidak valid!");
      }
      break;
    case '4':
      Trapesium trapesium = Trapesium();
      if (operasi == '1') {
        trapesium.hitungLuas();
      } else if (operasi == '2') {
        trapesium.hitungKeliling();
      } else {
        print("Pilihan operasi tidak valid!");
      }
      break;
    case '5':
      JajarGenjang jajarGenjang = JajarGenjang();
      if (operasi == '1') {
        jajarGenjang.hitungLuas();
      } else if (operasi == '2') {
        jajarGenjang.hitungKeliling();
      } else {
        print("Pilihan operasi tidak valid!");
      }
      break;
    case '6':
      Lingkaran lingkaran = Lingkaran();
      if (operasi == '1') {
        lingkaran.hitungLuas();
      } else if (operasi == '2') {
        lingkaran.hitungKeliling();
      } else {
        print("Pilihan operasi tidak valid!");
      }
      break;
    default:
      print("Pilihan bangun datar tidak valid!");
  }
}
