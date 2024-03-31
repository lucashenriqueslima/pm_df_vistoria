class CarPeripheralSituation {
  bool isScratched;
  bool isDamaged;
  bool isBroken;
  bool isMissing;
  bool isSmashed;
  bool isFlawless;
  String observation;

  CarPeripheralSituation({
    required this.isScratched,
    required this.isDamaged,
    required this.isBroken,
    required this.isMissing,
    required this.isSmashed,
    required this.isFlawless,
    required this.observation,
  });

  factory CarPeripheralSituation.empty() {
    return CarPeripheralSituation(
      isScratched: false,
      isDamaged: false,
      isBroken: false,
      isMissing: false,
      isSmashed: false,
      isFlawless: false,
      observation: '',
    );
  }
}
