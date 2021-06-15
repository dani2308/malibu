import 'package:cloud_firestore/cloud_firestore.dart';

class AppFormService {
  submitForm(
    String spot,
    String hour,
    double wavesize,
    String wavedirection,
    int period,
    String wind,
    int energy,
    String hightide,
    String lowtide,
  ) async {
    CollectionReference forecast =
        FirebaseFirestore.instance.collection('Forecast');

    print("Chegou aqui");
    await forecast.add(
      {
        'spot': spot,
        'hour': hour,
        'wavesize': wavesize,
        'wavedirection': wavedirection,
        'period': period,
        'wind': wind,
        'energy': energy,
        'hightide': hightide,
        'lowtide': lowtide,
      },
    );

    print("Chegou key");
  }
}
