library conversion;

export 'src/core/conversion_methods.dart';
import 'package:conversion/src/core/conversion_methods.dart';

class Convert {
  Conversion conversion = Conversion();

//decimal to hex
  List<String> decimalToHex({required List<int>? values}) {
    return conversion.convertDecimalToHex(decimalValues: values!);
  }

//decimal to binary
  List<String> decimalToBinary({required List<int>? values}) {
    return conversion.convertDecimalToBinary(decimalValues: values!);
  }

//binary to decimal
  List<int> binaryTodecimal({required List<String>? values}) {
    return conversion.convertBinaryToDecimal(binaryValues: values!);
  }

  //binary to hex
  List<String> binaryToHex({required List<String>? values}) {
    return conversion.convertBinaryToHex(binaryValues: values!);
  }

  //hex to binary
  List<String> hexToBinary({required List<String>? values}) {
    return conversion.convertHexToBinary(hexValues: values!);
  }

  //hexadecimal to decimal
  List<int> hexToDecimal({required List<String>? hexString}) {
    return conversion.convertHexToDecimal(hexString: hexString!);
  }

//radias to degree
  List<int> decimalToOctal({required List<int>? values}) {
    return conversion.convertDecimalToOctal(decimalValues: values!);
  }

//degrees, minute, second to decimal degree
  double toDecimalDegree(
      {required double? degree,
      required double? minutes,
      required double? seconds}) {
    return conversion.convertToDecimalDegree(
        degree: degree!, minutes: minutes!, seconds: seconds!);
  }

//radians to degree
  double radiansToDegree({required double? radians}) {
    return conversion.radiansToDegree(radians: radians!);
  }

  //find one's compliment
  String findOnesComplement({required String? binary}) {
    return conversion.findOnesComplement(binary: binary!);
  }

//find two's complement
  String findTwosComplement({required String? binary}) {
    return conversion.findTwosComplement(binary: binary!);
  }
}
