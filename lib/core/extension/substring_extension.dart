extension StringSubstringExtension on String {
  int get length => this.length;

  String substringL(int value) {
    if (value < length) {
      return substring(0, value);
    } else {
      return this;
    }
  }
}
