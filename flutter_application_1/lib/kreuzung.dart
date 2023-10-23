import 'ampel.dart';

//Klasse Kreuzung besteht aus vier Objekten der Klasse Ampel
//Die Ampeln sind alle ausgeschaltet
enum AmpelPhase { gruen, gelb, gelbRot, rot }

class Kreuzung {
  Ampel ampel1 = Ampel();
  Ampel ampel2 = Ampel();
  Ampel ampel3 = Ampel();
  Ampel ampel4 = Ampel();

//wird die Funktion ausgeführt wird ampel1 auf grün gesetzt und die übrigen auf rot
  void einschaltenKreuzung() {
    if (!ampel1.lampeGruen &&
        !ampel2.lampeRot &&
        !ampel3.lampeRot &&
        !ampel4.lampeRot) {
      ampel1.setLampen(false, false, true); // Ampel 1 auf grün setzen
      ampel2.setLampen(true, false, false); // Ampel 2 auf rot setzen
      ampel3.setLampen(true, false, false); // Ampel 3 auf rot setzen
      ampel4.setLampen(true, false, false); // Ampel 4 auf rot setzen
    } else {
      ampel1.setLampen(false, false, false); // Ampeln ausschalten
      ampel2.setLampen(false, false, false);
      ampel3.setLampen(false, false, false);
      ampel4.setLampen(false, false, false);
    }
  }

  AmpelPhase ampel1Phase = AmpelPhase.gruen;
  AmpelPhase ampel2Phase = AmpelPhase.rot;
  AmpelPhase ampel3Phase = AmpelPhase.rot;
  AmpelPhase ampel4Phase = AmpelPhase.rot;

  void schaltenKreuzung() {
    if (ampel1.lampeGruen) {
      ampel1.schaltenAmpel();
      ampel2.schaltenAmpel();
    } else if (ampel1.lampeGelb && ampel4.lampeRot) {
      ampel1.schaltenAmpel();
      ampel2.schaltenAmpel();
    } else if (ampel2.lampeGruen) {
      ampel2.schaltenAmpel();
      ampel3.schaltenAmpel();
    } else if (ampel2.lampeGelb) {
      ampel2.schaltenAmpel();
      ampel3.schaltenAmpel();
    } else if (ampel3.lampeGruen) {
      ampel3.schaltenAmpel();
      ampel4.schaltenAmpel();
    } else if (ampel3.lampeGelb) {
      ampel3.schaltenAmpel();
      ampel4.schaltenAmpel();
    } else if (ampel4.lampeGruen) {
      ampel4.schaltenAmpel();
      ampel1.schaltenAmpel();
    } else if (ampel4.lampeGelb) {
      ampel4.schaltenAmpel();
      ampel1.schaltenAmpel();
    }
  }
}
