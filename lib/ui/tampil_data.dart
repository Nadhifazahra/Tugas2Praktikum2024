import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Perkenalan",
            style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
        )),
        backgroundColor: Colors.deepPurple, // Warna AppBar
      ),
      body: Container(
        color: Colors.white, // Background putih
        padding: const EdgeInsets.all(16.0), // Padding agar konten tidak menempel ke tepi
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center, // Konten di tengah secara horizontal
            children: [
              Text(
                "Nama saya $nama, dengan NIM $nim. Saat ini, saya berusia $umur tahun.",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center, // Teks rata tengah
              ),
              SizedBox(height: 30), // Jarak bawah agar tidak terlalu sempit
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple, // Warna background tombol
                  foregroundColor: Colors.white, // Warna teks tombol
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Padding tombol
                ),
                onPressed: () {
                  Navigator.pop(context); // Aksi kembali ke layar sebelumnya
                },
                child: const Text(
                  'Kembali',
                  style: TextStyle(fontSize: 18), // Ukuran teks tombol
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
