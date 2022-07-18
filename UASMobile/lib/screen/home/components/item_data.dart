import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uasmobile/utils/context_ext.dart';

import '../../../model/dosen.dart';
import '../../../utils/app_route.dart';
import '../../dosen_viewmodel.dart';
import '../../edit/edit_screen.dart';

class ItemData extends StatelessWidget {
  final Dosen dosen;
  const ItemData(
      {Key? key,
        required this.dosen,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.startToEnd,
      onDismissed: (direction) {
        context.read<DosenViewModel>().deleteDosen(dosen.id);
        context.snackbar.showSnackBar(SnackBar(
          content: Text('Deleted ${dosen.nama}'),
          backgroundColor: Colors.redAccent,
        ));
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: () => AppRoute.to(EditScreen(
            dosen: dosen,
          )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dosen.dosenid,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            dosen.nama,
                            textScaleFactor: 1,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Text(dosen.fakultas),
                        Text(dosen.prodi),
                      ],
                    )),
                Expanded(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(dosen.email)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}