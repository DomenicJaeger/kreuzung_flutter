import 'package:flutter/material.dart';
import 'kreuzung.dart';
import 'widgetAmpel.dart';

class KreuzungWidget extends StatefulWidget {
  const KreuzungWidget({Key? key}) : super(key: key);

  @override
  _KreuzungWidgetState createState() => _KreuzungWidgetState();
}

class _KreuzungWidgetState extends State<KreuzungWidget> {
  Kreuzung kreuzung = Kreuzung();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: AmpelWidget(ampel: kreuzung.ampel1)),
            Expanded(child: AmpelWidget(ampel: kreuzung.ampel2)),
            Expanded(child: AmpelWidget(ampel: kreuzung.ampel3)),
            Expanded(child: AmpelWidget(ampel: kreuzung.ampel4)),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  kreuzung.einschaltenKreuzung();
                });
              },
              child: const Text('Kreuzung ein/aus'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  kreuzung.schaltenKreuzung();
                });
              },
              child: const Text('Kreuzung umschalten'),
            ),
          ],
        ),
      ],
    );
  }
}
