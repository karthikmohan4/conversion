import 'dart:math';

class Conversion {
  //Decimal to hexadecimal
  List<String> convertDecimalToHex({required List<int> decimalValues}) {
    return decimalValues.map((e) => e.toRadixString(16).toString()).toList();
  }

  //Decimal to binary
  List<String> convertDecimalToBinary({required List<int> decimalValues}) {
    return decimalValues.map((e) => e.toRadixString(2).toString()).toList();
  }

  //binary to decimal
  List<int> convertBinaryToDecimal({required List<String> binaryValues}) {
    return binaryValues.map((e) => int.parse(e, radix: 2)).toList();
  }

  //binary to decimal
  List<String> convertBinaryToHex({required List<String> binaryValues}) {
    List<int> decimal = convertBinaryToDecimal(binaryValues: binaryValues);
    return convertDecimalToHex(decimalValues: decimal);
  }

  //hex to binary
  List<String> convertHexToBinary({required List<String> hexValues}) {
    List<int> decimal = convertHexToDecimal(hexString: hexValues);
    return convertDecimalToBinary(decimalValues: decimal);
  }

  //decimal to octal
  List<int> convertDecimalToOctal({required List<int> decimalValues}) {
    return decimalValues.map((e) => int.parse(e.toRadixString(8))).toList();
  }

  //degree, minutes, seconds to degree conversion
  double convertToDecimalDegree(
      {required double degree,
      required double minutes,
      required double seconds}) {
    return (degree) + (minutes / 60) + (seconds / 3600);
  }

//radians to degree
  double radiansToDegree({required double radians}) {
    return (radians) * (180 / pi);
  }

  //hexadecimal to decimal
  List<int> convertHexToDecimal({required List<String> hexString}) {
    return hexString.map((e) => int.parse(e, radix: 16)).toList();
  }

 

  //find one's compliment
  String findOnesComplement({required String binary}) {
    return binary
        .toString()
        .split('')
        .map((bit) => bit == '0' ? '1' : '0')
        .join();
  }

  //find two's complement
  String findTwosComplement({required String binary}) {
    final oneComplement = findOnesComplement(binary: binary);
    return (int.parse(oneComplement, radix: 2) + 1).toRadixString(2);
  }
}
