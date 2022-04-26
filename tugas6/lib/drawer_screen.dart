import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String name = 'Rizky Adriyanto';
    const String nim = '20190801082';
    const String background =
        'https://cdn.discordapp.com/attachments/651590367187042304/960184558404395029/IMG_20210420_155010.jpg';
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(background))),
              accountName: Text(
                name,
                style: TextStyle(fontSize: 16),
              ),
              accountEmail: Text(
                nim,
                style: TextStyle(fontSize: 12),
              )),
          ListTile(
            title: Text('Nama'),
            subtitle: Text(name),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text('NIM'),
            subtitle: Text(nim),
            leading: Icon(Icons.numbers),
          )
        ],
      ),
    );
  }
}
