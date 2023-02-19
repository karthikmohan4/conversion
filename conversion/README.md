<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->


## Features

A handy flutter package the helps you in converting 
 * Decimal to Hex.
 * Hex to Decimal
 * Decimal to Binary.
 * Binary to Decimal.
 * Binary to Hex.
 * Hex to Binary.
 * Decimal to Octal.
 * Degrees, Minutes, Seconds to Decimal Degree.
 * Radians to Degree
 * One's Complement.
 * Two's Complement.


## Getting started

Add the package in pubspec.yaml file 

To import conversions:

```dart 
import 'package:conversion/conversion.dart';
```

## Usage


```dart
  Conversion conversion = Conversion();
```

To convert from decimal to hex string
```dart
convert.decimalToHex(values: [192, 193]); //[c0, c1]
```

To convert from decimal to binary
```dart
convert.decimalToBinary(values: [192, 193]); //[11000000, 11000001]
```

To convert from binary to decimal
```dart
convert.binaryTodecimal(values: ['100', '101']); //[4, 5]
```

To convert from binary to hex
```dart
convert.binaryToHex(values: ['11000000']); //[c0]
```

To convert from hex to binary
```dart
convert.hexToBinary(values: ['c0']); //[11000000]
```

To convert from decimal to octal
```dart
convert.decimalToOctal(values: [192, 193]); //[300, 301]
```

To convert from hex string to decimal
```dart
convert.hexToDecimal(hexString: ['c0', 'c1']); //[192, 193]
```

To find one's complement 
```dart
convert.findOnesComplement(binary: '011'); // 100
```

To find two's complement 
```dart
convert.findTwosComplement(binary: '0111'); // 1001
```
convert degree, min, seconds to decimal degree
```dart
convert.toDecimalDegree(degree: 30, minutes: 15, seconds: 50));; // 30.26388888888889
```
To convert radians to degree
```dart
convert.radiansToDegree(radians: 2); // 114.59155902616465
```



## Additional information

I will be adding more features in next set of versions. 
Anyone can contribute & make this package more flexible.

You can connect with me at 
<div id="badges">
  <a href="https://www.linkedin.com/in/karthik-m-68374a170/">
    <img src="https://www.freepik.com/free-icon/linkedin_14070215.htm#query=linkedin&position=11&from_view=search&track=sph" alt="LinkedIn Badge"/>
  </a>
</div>

