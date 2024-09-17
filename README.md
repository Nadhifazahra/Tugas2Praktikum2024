# Tugas Pertemuan 2

Nama : Nadhifa Zahra Kurniawan

NIM : H1D022020

Shift Baru: B

## Proses passing data dari form menuju tampilan
- User mengisi data di form. Pada file form_data.dart, terdapat sebuah form dengan 3 TextField (Nama, NIM, Tahun Lahir). Ketika user mengetik di TextField, data tersebut disimpan di dalam variabel controller (_namaController, _nimController, dan _tahunController).
- Setelah user mengisi data di input fields dan menekan tombol Simpan, method _tombolSimpan() akan dipanggil.
- Di dalam onPressed dari _tombolSimpan, nilai dari controller diambil kemudian data ini disimpan ke dalam variabel nama, nim, dan tahun.
- Setelah data siap, Navigator digunakan untuk pindah ke halaman TampilData. Dengan Navigator.of(context).push(), aplikasi akan membuka halaman TampilData dan mengirimkan data yang sudah dimasukkan (nama, nim, dan tahun) ke halaman tersebut melalui TampilData(nama: nama, nim: nim, tahun: tahun).
- Di halaman TampilData, data yang dikirim dari FormData diterima di dalam constructor. Parameter required this.nama, required this.nim, dan required this.tahun digunakan untuk mengambil data yang dikirimkan.
- Data yang sudah diterima di TampilData digunakan untuk melakukan operasi menghitung umur berdasarkan tahun lahir. Setelah itu, data ditampilkan pada tampilan menggunakan Text.

## Screenshot
![form_data](https://github.com/user-attachments/assets/dd874f6a-f3bb-419c-bee4-b112ee35d970)
![tampil_data](https://github.com/user-attachments/assets/765015e9-eea0-4f1e-b773-c53a57d62351)





