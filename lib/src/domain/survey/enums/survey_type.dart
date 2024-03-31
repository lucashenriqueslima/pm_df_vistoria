enum SurveyType {
  initial(),
  finale();

  String get label {
    switch (this) {
      case SurveyType.initial:
        return 'Inicial';
      case SurveyType.finale:
        return 'Final';
    }
  }
}
