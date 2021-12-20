import 'dart:ffi';

class Modelo {
  final int gender;
  final String age;
  final String height;
  final String weight;
  final int fhwo;
  final int favc;
  final int fcvc;
  final int ncp;
  final int caec;
  final int smoke;
  final int ch20;
  final int scc;
  final int faf;
  final int tue;
  final int calc;
  final int mtrans;

  Modelo({
    required this.gender,
    required this.age,
    required this.height,
    required this.weight,
    required this.fhwo,
    required this.favc,
    required this.fcvc,
    required this.ncp,
    required this.caec,
    required this.smoke,
    required this.ch20,
    required this.scc,
    required this.faf,
    required this.tue,
    required this.calc,
    required this.mtrans,
  });

  Map<String, dynamic> toJson() => {
        "Gender": gender,
        "Age": age,
        "Height": height,
        "Weight": weight,
        "Family_history_with_overweight": fhwo,
        "FAVC": favc,
        "FCVC": fcvc,
        "NCP": ncp,
        "CAEC": caec,
        "SMOKE": smoke,
        "CH2O": ch20,
        "SCC": scc,
        "FAF": faf,
        "TUE": tue,
        "CALC": calc,
        "MTRANS": mtrans,
      };
}
