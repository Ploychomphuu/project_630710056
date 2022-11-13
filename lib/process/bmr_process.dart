class BMR {
  var result;

  double man(double w, double h, double a) {
    result = 66 + (13.7 * w) + (5 * h) - (6.8 * a);
    return result;
  }

  double woman(double w, double h, double a) {
    result = 665 + (9.6 * w) + (1.8 * h) - (4.7 * a);
    return result;
  }
}