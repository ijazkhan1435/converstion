// import 'package:flutter/material.dart';
// class AreaScreen extends StatefulWidget {
//   const AreaScreen({Key? key}) : super(key: key);
//
//   @override
//   State<AreaScreen> createState() => _AreaScreenState();
// }
//
// class _AreaScreenState extends State<AreaScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Area'),
//         centerTitle: true,
//       ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding:  EdgeInsets.all(12.0),
//             child: Column(
//               children: [
//                 InkWell(
//                   child: Container(
//
//                     decoration: BoxDecoration(
//                         color: Colors.cyan.shade50,
//                         borderRadius: BorderRadius.circular(10)
//                     ),
//                     height: 150,
//                     child: Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: 30,
//                           ),
//                           Row(
//                             children: [
//                               Text('sq.Kilometer',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
//                               SizedBox(width: 5,),
//                               Icon(Icons.arrow_drop_down)
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           TextField(
//
//                             decoration: InputDecoration(
//                                 hintText: '0'
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//
//                   ),
//                   onTap: (){
//                     showModalBottomSheet<void>(
//                       context: context,
//                       builder: (BuildContext context) {
//
//                         return Container(
//                           height: 600,
//                           width: 600,
//                           child: Padding(
//                             padding: const EdgeInsets.all(14.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text('Select Unit',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
//                                 SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('km2')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Kilometer',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),
//                                 SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('m')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Metre',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('cm')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Centimetre',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('mm')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Millimetre',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('μm')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Micrometre',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('nm')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Nanometre',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('Å')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Angstrom',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('mi')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Mili',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('yd')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Yard',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('ft')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Foot',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('in')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Inch',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('nmi')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Nautical Mile',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('ftm')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Fathom',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('au')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Astronomical Unit',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('ly')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Light Year',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('pc')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Parsec',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                     );
//                   },
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 InkWell(
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.white38,
//                         borderRadius: BorderRadius.circular(10)
//                     ),
//                     height: 150,
//                     child: Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: 30,
//                           ),
//                           Row(
//                             children: [
//                               Text('Kilometer',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
//                               SizedBox(width: 5,),
//                               Icon(Icons.arrow_drop_down)
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           TextFormField(
//                             decoration: InputDecoration(
//                                 hintText: '0'
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//
//                   ),
//                   onTap: (){
//                     showModalBottomSheet<void>(
//                       context: context,
//                       builder: (BuildContext context) {
//
//                         return Container(
//                           height: 600,
//                           width: 600,
//                           child: Padding(
//                             padding: const EdgeInsets.all(14.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text('Select Unit',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
//                                 SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('km')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Kilometer',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),
//                                 SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('m')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Metre',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('cm')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Centimetre',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('mm')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Millimetre',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('μm')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Micrometre',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('nm')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Nanometre',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('Å')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Angstrom',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('mi')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Mili',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('yd')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Yard',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('ft')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Foot',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('in')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Inch',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('nmi')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Nautical Mile',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('ftm')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Fathom',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('au')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Astronomical Unit',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('ly')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Light Year',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//                                 Row(
//                                   children: [
//                                     SizedBox(
//                                       child: Container(
//                                           child: Align(child: Text('pc')),
//                                           height: 25,
//                                           width: 35,
//                                           decoration: BoxDecoration(
//                                               color: Colors.lightBlue,
//                                               borderRadius: BorderRadius.circular(10)
//                                           )
//
//                                       ),
//                                     ),
//                                     SizedBox(width: 15,),
//                                     Text('Parsec',style: TextStyle(fontSize: 16,),),
//                                   ],
//                                 ),SizedBox(height: 20,),
//
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                     );
//                   },
//                 ),
//
//                 // Expanded(
//                 //     child: Container(
//                 //       child: OnscreenKeyboard(
//                 //         value: 'atha',
//                 //         initialCase: InitialCase.LOWER_CASE,
//                 //         backgroundColor: Colors.transparent,
//                 //         buttonColor: Colors.transparent,
//                 //         focusColor: Colors.red,
//                 //         onChanged: (txt){
//                 //           setState(() {
//                 //             text=text;
//                 //           });
//                 //         },
//                 //       ),
//                 // ))
//
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }
