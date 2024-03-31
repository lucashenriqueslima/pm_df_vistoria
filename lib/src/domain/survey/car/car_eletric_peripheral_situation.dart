class CarEletricPeripheralSituation {
  bool isDamaged;
  bool isFlawless;
  bool isStolen;
  String observation;

  CarEletricPeripheralSituation({
    required this.isDamaged,
    required this.isFlawless,
    required this.isStolen,
    required this.observation,
  });

  factory CarEletricPeripheralSituation.empty() {
    return CarEletricPeripheralSituation(
      isDamaged: false,
      isFlawless: false,
      isStolen: false,
      observation: '',
    );
  }
}
