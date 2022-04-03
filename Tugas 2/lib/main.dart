import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String linkImage =
        'https://cdn.discordapp.com/attachments/651590367187042304/960184558404395029/IMG_20210420_155010.jpg';
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('Tugas 2')),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Selamat Datang di Universitas Esa Unggul \nProgram Studi Teknik Informatika - Fakultas Ilmu Komputer',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.network(
                  linkImage,
                  height: 200,
                  width: size.width,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Nama Saya Rizky Adriyanto'),
                const Text('NIM Saya 20190801082'),
                const Text('Hobby Saya Gaming'),
                const Text('Pekerjaan Saya Mahasiswa'),
                const Text('Status Saya belum menikah')
              ],
            ),
          )),
    );
  }
}
