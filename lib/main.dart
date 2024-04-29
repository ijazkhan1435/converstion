import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:unit_conversion/screens/home_screen.dart';
import 'package:unit_conversion/services/ad_Provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   MobileAds.instance.initialize();
//   runApp(
//
//     MultiProvider(
//       // providers: [
//       //   ChangeNotifierProvider<AdProvider>(create: (context) => AdProvider()),
//       // ],
//       child: const MyApp(),
//     ),
//   );
// }
//
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const HomeScreen(),
//     );
//   }
// }




// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Unit Converter',
//       home: UnitConverter(),
//     );
//   }
// }
//
// class UnitConverter extends StatefulWidget {
//   @override
//   _UnitConverterState createState() => _UnitConverterState();
// }
//
// class _UnitConverterState extends State<UnitConverter> {
//   List<String> unitsList1 = [
//     'Kilometer',
//     'Meter',
//     'Centimeter',
//     'Millimetre',
//     'Micrometre',
//     'Nanometre',
//     'Angstrom',
//     'Mile',
//     'Yard',
//     'Foot',
//     'Inch',
//     'Nautical Mile',
//     'Fathom',
//     'Astronomical Unit',
//     'Light Year',
//     'Parsec',
//   ];
//
//   List<String> unitsList2 = [
//     'Kilometer',
//     'Meter',
//     'Centimeter',
//     'Millimetre',
//     'Micrometre',
//     'Nanometre',
//     'Angstrom',
//     'Mile',
//     'Yard',
//     'Foot',
//     'Inch',
//     'Nautical Mile',
//     'Fathom',
//     'Astronomical Unit',
//     'Light Year',
//     'Parsec',
//   ];
//
//   String selectedUnit1 = 'Kilometer';
//   String selectedUnit2 = 'Kilometer';
//   TextEditingController valueController = TextEditingController();
//   double result = 0.0;
//
//   void convert() {
//
//     print("jjjjjjjjjjjjjjjjjjk$selectedUnit1");
//     double inputValue = double.tryParse(valueController.text) ?? 0.0;
//     double conversionFactor = getConversionFactor(selectedUnit1, selectedUnit2);
//     result = inputValue * conversionFactor;
//     setState(() {});
//   }
//
//   double getConversionFactor(String fromUnit, String toUnit) {
//     Map<String, double> conversionFactors = {
//       'Kilometer-Meter': 1000,
//       'Kilometer-Centimeter': 100000,
//       'Kilometer-Millimetre': 1e+6,
//       'Kilometer-Micrometre': 1e+9,
//       'Kilometer-Nanometre': 1e+12,
//       'Kilometer-Angstrom': 1e+13,
//       'Kilometer-Mile': 1e+6,
//       'Kilometer-Yard': 1094,
//       'Kilometer-Foot': 3281,
//       'Kilometer-Inch': 39370.1,
//       'Kilometer-Nautical Mile': 0.539957,
//       'Kilometer-Fathom': 546.807,
//       'Kilometer-Astronomical Unit': 6.68459e-9,
//       'Kilometer-Light Year': 1.057e-13,
//       'Kilometer-Parsec': 3.241e-14,
//
//       'Metre-Centimetre': 100,
//       'Metre-Millimetre': 1000,
//       'Metre-Micrometre': 1e+6,
//       'Metre-Nanometre': 1e+9,
//       'Metre-Angstrom': 1e+10,
//       'Metre-Mile': 1000,
//       'Metre-Yard': 1.09361,
//       'Metre-Foot': 3.28084,
//       'Metre-Inch': 39.3701,
//       'Metre-Nautical Mile': 0.000539957,
//       'Metre-Fathom': 0.546807,
//       'Metre-Astronomical Unit': 6.68459e-12,
//       'Metre-Light Year': 1.057e-16,
//       'Metre-Parsec': 3.241e-17,
//
//       'Centimetre-Millimetre': 10,
//       'Centimetre-Micrometre': 1e+4,
//       'Centimetre-Nanometre': 1e+7,
//       'Centimetre-Angstrom': 1e+8,
//       'Centimetre-Mile': 10,
//       'Centimetre-Yard': 0.0109361,
//       'Centimetre-Foot': 0.0328084,
//       'Centimetre-Inch': 0.393701,
//       'Centimetre-Nautical Mile': 5.3996e-6,
//       'Centimetre-Fathom': 0.00546807,
//       'Centimetre-Astronomical Unit': 6.68459e-14,
//       'Centimetre-Light Year': 1.057e-18,
//       'Centimetre-Parsec': 3.241e-19,
//
//       'Millimetre-Micrometre': 1000,
//       'Millimetre-Nanometre': 1e+6,
//       'Millimetre-Angstrom': 1e+7,
//       'Millimetre-Mile': 1,
//       'Millimetre-Yard': 0.00109361,
//       'Millimetre-Foot': 0.00328084,
//       'Millimetre-Inch': 0.0393701,
//       'Millimetre-Nautical Mile': 5.3996e-7,
//       'Millimetre-Fathom': 0.000546807,
//       'Millimetre-Astronomical Unit': 6.68459e-15,
//       'Millimetre-Light Year': 1.057e-19,
//       'Millimetre-Parsec': 3.241e-20,
//
//       'Micrometre-Nanometre': 1000,
//       'Micrometre-Angstrom': 1e+6,
//       'Micrometre-Mile': 1e-3,
//       'Micrometre-Yard': 1.09361e-6,
//       'Micrometre-Foot': 3.28084e-6,
//       'Micrometre-Inch': 3.93701e-5,
//       'Micrometre-Nautical Mile': 5.3996e-10,
//       'Micrometre-Fathom': 5.46807e-8,
//       'Micrometre-Astronomical Unit': 6.68459e-18,
//       'Micrometre-Light Year': 1.057e-22,
//       'Micrometre-Parsec': 3.241e-23,
//
//       'Nanometre-Angstrom': 10,
//       'Nanometre-Mile': 1e-6,
//       'Nanometre-Yard': 1.09361e-9,
//       'Nanometre-Foot': 3.28084e-9,
//       'Nanometre-Inch': 3.93701e-8,
//       'Nanometre-Nautical Mile': 5.3996e-13,
//       'Nanometre-Fathom': 5.46807e-11,
//       'Nanometre-Astronomical Unit': 6.68459e-21,
//       'Nanometre-Light Year': 1.057e-25,
//       'Nanometre-Parsec': 3.241e-26,
//
//       'Angstrom-Mile': 1e-13,
//       'Angstrom-Yard': 1.09361e-10,
//       'Angstrom-Foot': 3.28084e-10,
//       'Angstrom-Inch': 3.93701e-9,
//       'Angstrom-Nautical Mile': 5.3996e-14,
//       'Angstrom-Fathom': 5.46807e-12,
//       'Angstrom-Astronomical Unit': 6.68459e-22,
//       'Angstrom-Light Year': 1.057e-26,
//       'Angstrom-Parsec': 3.241e-27,
//
//       'Mile-Yard': 1.09361e-9,
//       'Mile-Foot': 3.28084e-9,
//       'Mile-Inch': 3.93701e-8,
//       'Mile-Nautical Mile': 5.3996e-13,
//       'Mile-Fathom': 5.46807e-11,
//       'Mile-Astronomical Unit': 6.68459e-21,
//       'Mile-Light Year': 1.057e-25,
//       'Mile-Parsec': 3.241e-26,
//
//       'Yard-Foot': 3,
//       'Yard-Inch': 36,
//       'Yard-Nautical Mile': 0.000493737,
//       'Yard-Fathom': 0.333333,
//       'Yard-Astronomical Unit': 4.057e-13,
//       'Yard-Light Year': 6.419e-14,
//       'Yard-Parsec': 1.972e-14,
//
//       'Foot-Inch': 12,
//       'Foot-Nautical Mile': 0.000164579,
//       'Foot-Fathom': 0.333333,
//       'Foot-Astronomical Unit': 3.381e-13,
//       'Foot-Light Year': 5.335e-14,
//       'Foot-Parsec': 1.634e-14,
//
//       'Inch-Nautical Mile': 0.0000137158,
//       'Inch-Fathom': 0.0277778,
//       'Inch-Astronomical Unit': 2.818e-13,
//       'Inch-Light Year': 4.447e-14,
//       'Inch-Parsec': 1.362e-14,
//
//       'Nautical Mile-Fathom': 1852,
//       'Nautical Mile-Astronomical Unit': 2.269e-12,
//       'Nautical Mile-Light Year': 3.582e-13,
//       'Nautical Mile-Parsec': 1.099e-13,
//
//       'Fathom-Astronomical Unit': 1.223e-12,
//       'Fathom-Light Year': 1.931e-13,
//       'Fathom-Parsec': 5.92e-14,
//
//       'Astronomical Unit-Light Year': 0.157473,
//       'Astronomical Unit-Parsec': 4.84814e-6,
//
//       'Light Year-Parsec': 3.262,
//         'Parsec-Kilometer': 3.086e+13,
//         'Parsec-Meter': 3.086e+16,
//         'Parsec-Centimeter': 3.086e+18,
//         'Parsec-Millimeter': 3.086e+19,
//         'Parsec-Micrometer': 3.086e+22,
//         'Parsec-Nanometer': 3.086e+25,
//         'Parsec-Angstrom': 3.086e+26,
//         'Parsec-Mile': 3.086e+19,
//         'Parsec-Yard': 3.377e+16,
//         'Parsec-Foot': 1.026e+17,
//         'Parsec-Inch': 1.231e+18,
//         'Parsec-Nautical Mile': 1.689e+13,
//         'Parsec-Fathom': 1.716e+16,
//         'Parsec-Light Year': 0.306601,
//         'Meter-Mile': 1000,
//         'Centimeter-Mile': 10,
//         'Millimeter-Mile': 1,
//         'Micrometer-Mile': 1e-3,
//         'Nanometer-Mile': 1e-6,
//         'Angstrom-Mile': 1e-7,
//         'Mile-Meter': 1e-3,
//         'Mile-Centimeter': 0.1,
//         'Mile-Millimeter': 0.001,
//         'Mile-Micrometer': 1e-6,
//         'Mile-Nanometer': 1e-9,
//         'Mile-Angstrom': 1e-10,
//
//         'Yard-Nanometer': 9.144e+12,
//         'Yard-Micrometer': 9.144e+15,
//         'Yard-Mile': 914.4,
//         'Foot-Nanometer': 3.048e+12,
//         'Foot-Micrometer': 3.048e+15,
//         'Foot-Mile': 304.8,
//         'Inch-Nanometer': 2.54e+11,
//         'Inch-Micrometer': 2.54e+14,
//         'Inch-Mile': 25.4,
//         'Nautical Mile-Yard': 2025.37,
//         'Nautical Mile-Foot': 6076.12,
//         'Nautical Mile-Inch': 72913.4,
//         'Fathom-Nanometer': 1.8288e+15,
//         'Fathom-Micrometer': 1.8288e+18,
//         'Fathom-Mile': 1828.8,
//         'Astronomical Unit-Yard': 2.061e+13,
//         'Astronomical Unit-Foot': 6.264e+13,
//         'Astronomical Unit-Inch': 7.517e+14,
//         'Light Year-Yard': 5.879e+12,
//         'Light Year-Foot': 1.784e+13,
//         'Light Year-Inch': 2.141e+14,
//
//
//
//
//       // Add more conversion factors as needed
//     };
//     String conversionKey = '$fromUnit-$toUnit';
//
//     // Check if direct conversion factor exists
//     if (conversionFactors.containsKey(conversionKey)) {
//       print("kiijijiojii");
//
//       return conversionFactors[conversionKey]!;
//     }
//
//     // Check if inverse conversion factor exists
//     String inverseKey = '$toUnit-$fromUnit';
//     if (conversionFactors.containsKey(inverseKey)) {
//
//
//       print(";;;;;;;;;;;;;;;;;;");
//       return 1 / conversionFactors[inverseKey]!;
//     }
//
//     // Return 1.0 for units that are the same (no conversion needed)
//     return 1.0;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Unit Converter'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Container(
//           height: 600,
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   DropdownButton<String>(
//                     value: selectedUnit1,
//                     onChanged: (value) {
//                       setState(() {
//                         selectedUnit1 = value!;
//                         print(";;;;;;;;;;;;;;;;;;$selectedUnit1");
//
//                       });
//                     },
//                     items: unitsList1.map((unit) {
//                       return DropdownMenuItem<String>(
//                         value: unit,
//                         child: Text(unit),
//                       );
//                     }).toList(),
//                   ),
//                   Expanded(
//                     child: TextField(
//                       controller: valueController,
//                       keyboardType: TextInputType.number,
//                       decoration: InputDecoration(labelText: 'Enter value'),
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   DropdownButton<String>(
//                     value: selectedUnit2,
//                     onChanged: (value) {
//                       setState(() {
//                         selectedUnit2 = value!;
//                       });
//                     },
//                     items: unitsList2.map((unit) {
//                       return DropdownMenuItem<String>(
//                         value: unit,
//                         child: Text(unit),
//                       );
//                     }).toList(),
//                   ),
//                   ElevatedButton(
//                     onPressed: convert,
//                     child: Text('Convert'),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Text('Result: $result ${selectedUnit2.toLowerCase()}'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
