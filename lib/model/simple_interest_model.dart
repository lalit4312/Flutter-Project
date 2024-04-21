class SimpleInterestModel {
  double Principle;
  double Time;
  double Rate;

  SimpleInterestModel({
    required this.Principle,
    required this.Time,
    required this.Rate,
  });

  double calculate() {
    return ((Principle * Time * Rate) / 100);
  }
}
