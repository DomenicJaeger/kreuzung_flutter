// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'ampel.dart';

class AmpelWidget extends StatefulWidget {
  final Ampel ampel;
  AmpelWidget({required this.ampel, Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AmpelWidgetState createState() => _AmpelWidgetState();
}

class _AmpelWidgetState extends State<AmpelWidget> {
  Ampel get ampel => widget.ampel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: ampel.lampeRot ? Colors.red : Colors.blueGrey,
          ),
          width: 80,
          height: 80,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: ampel.lampeGelb ? Colors.yellow : Colors.blueGrey,
          ),
          width: 80,
          height: 80,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: ampel.lampeGruen ? Colors.green : Colors.blueGrey,
          ),
          width: 80,
          height: 80,
        ),
        // ElevatedButton(
        //   onPressed: () {
        //     setState(() {
        //       ampel.schaltenAmpel();
        //     });
        //   },
        //   child: const Text('Ampel schalten'),
        // ),
      ],
    );
  }
}
