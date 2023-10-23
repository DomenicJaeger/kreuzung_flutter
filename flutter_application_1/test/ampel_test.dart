import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/ampel.dart';

void main() {
  test('ampel01', () {
    Ampel ampel01 = Ampel();

    expect(ampel01.lampeRot, false);
    expect(ampel01.lampeGelb, false);
    expect(ampel01.lampeGruen, false);

    ampel01.schaltenAmpel(); //ampel sollte von rot auf gelbrot schalten

    expect(ampel01.lampeRot, true);
    expect(ampel01.lampeGelb, false);
    expect(ampel01.lampeGruen, false);
  });

  test('ampel02', () {
    Ampel ampel02 = Ampel();

    expect(ampel02.lampeRot, false);
    expect(ampel02.lampeGelb, false);
    expect(ampel02.lampeGruen, false);

    ampel02.schaltenAmpel(); // von aus auf rot schalten

    expect(ampel02.lampeRot, true);
    expect(ampel02.lampeGelb, false);
    expect(ampel02.lampeGruen, false);
  });

  test('kreuzung01', () {
    print('halli hallo hallöle');
  });
}
