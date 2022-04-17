import 'package:flutter/material.dart';
import 'package:tugas4/home/components/input_widget.dart';
import 'package:tugas4/models/bangun_datar.dart';

import '../drawer_screen.dart';
import '../src/arrays.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedItem = listBangunDatar[0];
  BangunDatar _bangunDatar = BangunDatar();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas 4 Mobile'),
        centerTitle: true,
      ),
      drawer: const DrawerScreen(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: ListView(physics: const BouncingScrollPhysics(), children: [
              const Text('Bangun Datar:'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 200,
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: DropdownButtonFormField<String>(
                          value: _selectedItem,
                          decoration: const InputDecoration(
                            enabledBorder: InputBorder.none,
                          ),
                          items: listBangunDatar
                              .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(fontSize: 15),
                            ),
                          ))
                              .toList(),
                          onChanged: (value) => setState(() {
                            _selectedItem = value ?? _selectedItem;
                          })),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                ),
                child: InputWidget(
                  selectedItem: _selectedItem,
                  bangunDatar: (BangunDatar bangunDatar) =>
                      setState(() => _bangunDatar = bangunDatar),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Keliling $_selectedItem',
                    style: const TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: size.width,
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                                'Rumus : ${_bangunDatar.rumusKeliling()}'),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('Hasil'),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '${_bangunDatar.hitungKeliling().round()} cm',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Luas $_selectedItem',
                    style: const TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: size.width,
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text('Rumus : ${_bangunDatar.rumusLuas()}'),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('Hasil'),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('${_bangunDatar.hitungLuas().round()} cm²',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
