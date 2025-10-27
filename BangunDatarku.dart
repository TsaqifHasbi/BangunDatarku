import 'dart:io';

class Persegi {
  void hitungLuas() {
    print("Masukkan panjang sisi persegi:");
    double sisi = double.parse(stdin.readLineSync()!);
    double luas = sisi * sisi;
    print("Luas Persegi: $luas");
  }

  void hitungKeliling() {
    print("Masukkan panjang sisi persegi:");
    double sisi = double.parse(stdin.readLineSync()!);
    double keliling = 4 * sisi;
    print("Keliling Persegi: $keliling");
  }
}

class PersegiPanjang {
  void hitungLuas() {
    print("Masukkan panjang persegi panjang:");
    double panjang = double.parse(stdin.readLineSync()!);
    print("Masukkan lebar persegi panjang:");
    double lebar = double.parse(stdin.readLineSync()!);
    double luas = panjang * lebar;
    print("Luas Persegi Panjang: $luas");
  }

  void hitungKeliling() {
    print("Masukkan panjang persegi panjang:");
    double panjang = double.parse(stdin.readLineSync()!);
    print("Masukkan lebar persegi panjang:");
    double lebar = double.parse(stdin.readLineSync()!);
    double keliling = 2 * (panjang + lebar);
    print("Keliling Persegi Panjang: $keliling");
  }
}

class Segitiga {
  void hitungLuas() {
    print("Masukkan alas segitiga:");
    double alas = double.parse(stdin.readLineSync()!);
    print("Masukkan tinggi segitiga:");
    double tinggi = double.parse(stdin.readLineSync()!);
    double luas = 0.5 * alas * tinggi;
    print("Luas Segitiga: $luas");
  }

  void hitungKeliling() {
    print("Masukkan sisi a segitiga:");
    double a = double.parse(stdin.readLineSync()!);
    print("Masukkan sisi b segitiga:");
    double b = double.parse(stdin.readLineSync()!);
    print("Masukkan sisi c segitiga:");
    double c = double.parse(stdin.readLineSync()!);
    double keliling = a + b + c;
    print("Keliling Segitiga: $keliling");
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
  print("Masukkan pilihan (1-3): ");
  String? bangunDatar = stdin.readLineSync();

  print("\nPilih operasi yang ingin dilakukan:");
  print("1. Hitung Luas");
  print("2. Hitung Keliling");
  print("Masukkan pilihan (1-2): ");
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
    default:
      print("Pilihan bangun datar tidak valid!");
  }
}
