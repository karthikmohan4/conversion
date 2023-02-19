import 'package:flutter/material.dart';
import 'package:conversion/conversion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversion package test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Convert convert = Convert();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conversion package test"),
      ),
      body: Center(
        //
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  print(convert.decimalToHex(values: [192, 193]));
                },
                child: const Text("decimal to hex")),
            ElevatedButton(
                onPressed: () {
                  print(convert.decimalToBinary(values: [192, 193]));
                },
                child: const Text("decimal to binary")),
            ElevatedButton(
                onPressed: () {
                  print(convert.binaryTodecimal(values: ['100', '101']));
                },
                child: const Text("binary to decimal")),
            ElevatedButton(
                onPressed: () {
                  print(convert.binaryToHex(values: ['11000000']));
                },
                child: const Text("binary to hex")),
            ElevatedButton(
                onPressed: () {
                  print(convert.hexToBinary(values: ['c0']));
                },
                child: const Text("hex to binary ")),
            ElevatedButton(
                onPressed: () {
                  print(convert.decimalToOctal(values: [192, 193]));
                },
                child: const Text("decimal to octal")),
            ElevatedButton(
                onPressed: () {
                  print(convert.hexToDecimal(hexString: ['c0', 'c1']));
                },
                child: const Text("hex to decimal")),
            ElevatedButton(
                onPressed: () {
                  print(convert.findOnesComplement(binary: '011'));
                },
                child: Text("One's compliment")),
            ElevatedButton(
                onPressed: () {
                  print(convert.findTwosComplement(binary: '0111'));
                },
                child: Text("two's compliment")),
            ElevatedButton(
                onPressed: () {
                  print(convert.toDecimalDegree(
                      degree: 30, minutes: 15, seconds: 50));
                },
                child: Text("degree min sec to decimal degree")),
            ElevatedButton(
                onPressed: () {
                  print(convert.radiansToDegree(radians: 2));
                },
                child: Text("radians to degree")),
          ],
        ),
      ),
    );
  }
}
