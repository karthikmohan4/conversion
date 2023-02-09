library conversion;

import 'package:conversion/src/core/conversion_methods.dart';

class Convert {
  Conversion conversion = Conversion();

  decimalToHex({required List<int> values}) {
    print(conversion.convertDecimalToHex(values));
  }

  decimalToBinary({required List<int> values}) {
    print(conversion.convertDecimalToBinary(values));
  }
}
