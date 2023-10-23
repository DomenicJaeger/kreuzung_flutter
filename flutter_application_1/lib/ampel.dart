class Ampel {
  bool lampeRot;
  bool lampeGelb;
  bool lampeGruen;

  Ampel({
    this.lampeRot = false,
    this.lampeGelb = false,
    this.lampeGruen = false,
  });

  void setLampen(bool rot, bool gelb, bool gruen) {
    lampeRot = rot;
    lampeGelb = gelb;
    lampeGruen = gruen;
  }

  void schaltenAmpel() {
    if (!lampeRot && !lampeGelb && !lampeGruen) {
      setLampen(true, false, false); // wenn aus schalte auf rot
    } else if (lampeRot && !lampeGelb && !lampeGruen) {
      setLampen(true, true, false); // wenn rot schalte auf gelbrot
    } else if (lampeRot && lampeGelb && !lampeGruen) {
      setLampen(false, false, true); // wenn gelbrot schalte auf gruen
    } else if (!lampeRot && !lampeGelb && lampeGruen) {
      setLampen(false, true, false); // wenn gruen schalte auf gelb
    } else if (!lampeRot && lampeGelb && !lampeGruen) {
      setLampen(true, false, false); // wenn gelb schalte auf rot
    } else {
      setLampen(false, false, false); //ausschalten
    }
  }
}
