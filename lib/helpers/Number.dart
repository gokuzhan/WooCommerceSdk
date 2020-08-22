class Number {
  static price(String value, int minorUnit) {
    value = value.substring(0, value.length);
    return int.parse(value.substring(0, value.length - minorUnit))
        .toStringAsFixed(minorUnit);
  }
}
