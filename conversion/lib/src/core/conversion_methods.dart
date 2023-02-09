class Conversion {
  //Decimal to hexadecimal
  Iterable<String> convertDecimalToHex(List<int> decimalValues) {
  return decimalValues.map((e) => e.toRadixString(16).toString());
  }

  //Decimal to binary 
  Iterable<String> convertDecimalToBinary(List<int> decimalValues) {
  return decimalValues.map((e) => e.toRadixString(2).toString());
  }
 

}
