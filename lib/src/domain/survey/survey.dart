// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:pm_df_vistoria/src/domain/survey/car/car_eletric_peripheral_situation.dart';
import 'package:pm_df_vistoria/src/domain/survey/car/car_peripheral_situation.dart';

class Survey {
  final String id;
  double ammountFuel;
  final int lastOdometer;
  int currentOdometer;
  CarPeripheralSituation bodyWork;
  CarPeripheralSituation roof;
  CarPeripheralSituation hood;
  CarEletricPeripheralSituation arrows;
  CarEletricPeripheralSituation hotlight;
  CarEletricPeripheralSituation radio;

  Survey({
    required this.id,
    required this.ammountFuel,
    required this.lastOdometer,
    required this.currentOdometer,
    required this.bodyWork,
    required this.roof,
    required this.hood,
    required this.arrows,
    required this.hotlight,
    required this.radio,
  });

  factory Survey.empty(String id) {
    return Survey(
      id: id,
      ammountFuel: 0,
      lastOdometer: 0,
      currentOdometer: 0,
      bodyWork: CarPeripheralSituation.empty(),
      roof: CarPeripheralSituation.empty(),
      hood: CarPeripheralSituation.empty(),
      arrows: CarEletricPeripheralSituation.empty(),
      hotlight: CarEletricPeripheralSituation.empty(),
      radio: CarEletricPeripheralSituation.empty(),
    );
  }
}
