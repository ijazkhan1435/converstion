import 'package:flutter/material.dart';
import 'package:onscreen_keyboard/onscreen_keyboard.dart';
import 'package:unit_conversion/utils/app_constant.dart';
class LengthScreen extends StatefulWidget {
  final String title;
 final List<String> unitList1;
 final List<String> shortUnitList1;
 final List<String> unitList2;
 final List<String> shortUnitList2;

  const LengthScreen({Key? key,required this.title, required this.unitList1,required this.shortUnitList1,required this.unitList2,required this.shortUnitList2}) : super(key: key);

  // final String title;
  @override
  State<LengthScreen> createState() => _LengthScreenState();
}

class _LengthScreenState extends State<LengthScreen> {
   TextEditingController controller= TextEditingController();
   double result = 0.0;
  late String selectedUnits;
  late String selectedUnits3;
  late String selectedUnits2;
  late String selectedUnits4;

   String text = '';
   var total=0;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedUnits=widget.unitList1[0];
    selectedUnits3=widget.unitList2[0];
    selectedUnits2=widget.shortUnitList1[0];
    selectedUnits4=widget.shortUnitList2[0];
  }

  temperatureConversion(){
    if(selectedUnits == "Celsius" && selectedUnits3 == "Fahrenheit")
    {
      double inputValue = double.parse(controller.text);
      result = inputValue * 9/5 +32;
      setState(() {
      });
    }
    else
      if(selectedUnits == "Fahrenheit" && selectedUnits3 == "Celsius")
      {
        double inputValue = double.parse(controller.text);
        result = (inputValue -32) * 5/9;
        setState(() {

        });

      }else
        if(selectedUnits == "Fahrenheit" && selectedUnits3 == "Kelvin")
        {
          double inputValue = double.parse(controller.text);
          result = (inputValue -32 ) * 5/9 + 273.15;
          setState(() {

          });

        }else
          if(selectedUnits == "Celsius" && selectedUnits3 == "Kelvin")
          {
            double inputValue = double.parse(controller.text);
            result = (inputValue + 273.15);
            setState(() {
            });
          }else
            if(selectedUnits == "Celsius" && selectedUnits3 == "Rankine")
            {
              double inputValue = double.parse(controller.text);
              result = (inputValue * 9/5 )+ 491.67;
              setState(() {
              });

            }else
              if(selectedUnits == "Fahrenheit" && selectedUnits3 == "Rankine")
              {
                double inputValue = double.parse(controller.text);
                result = (inputValue + 459.67);
                setState(() {
                });
              }else
                if(selectedUnits == "Rankine" && selectedUnits3 == "Fahrenheit")
                {
                  double inputValue = double.parse(controller.text);
                  result = (inputValue - 459.67);
                  setState(() {

                  });

                }else
                  if(selectedUnits == "Rankine" && selectedUnits3 == "Celsius")
                  {
                    double inputValue = double.parse(controller.text);
                    result = (inputValue - 459.67);
                    setState(() {

                    });

                  }else
                    if(selectedUnits == "Rankine" && selectedUnits3 == "Kelvin")
                    {
                      double inputValue = double.parse(controller.text);
                      result = (inputValue * 5/9);
                      setState(() {

                      });

                    }else
                      if(selectedUnits == "Kelvin" && selectedUnits3 == "Rankine")
                      {
                        double inputValue = double.parse(controller.text);
                        result = (inputValue * 1.8);
                        setState(() {

                        });

                      }else
                        if(selectedUnits == "Kelvin" && selectedUnits3 == "Celsius")
                        {
                          double inputValue = double.parse(controller.text);
                          result = (inputValue - 273.15);
                          setState(() {

                          });

                        }else
                          if(selectedUnits == "Kelvin" && selectedUnits3 == "Fahrenheit")
                          {
                            double inputValue = double.parse(controller.text);
                            result = (inputValue - 273.15) * 9/5 + 32;
                            setState(() {
                            });
                          }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!,style: TextStyle(fontWeight: FontWeight.bold,),),
        centerTitle: true,
      ),
      body:
      SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(12.0),
          child: Column(
            children: [
              InkWell(
                child:
                Container(

                  decoration: BoxDecoration(
                      color: Colors.cyan.shade50,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: 170,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(selectedUnits,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            const SizedBox(width: 5,),
                            const Icon(Icons.arrow_drop_down)
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          controller: controller,
                          autofocus: true,
                          keyboardType: TextInputType.number,
                          onChanged: (val){
                            setState(() {
                              if(widget.title == "Temperature"){
                                temperatureConversion();
                              }else{
                                convert();}
                            });

                          },
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: '0'
                          ),
                        )
                      ],
                    ),
                  ),

                ),
                onTap: (){
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {

                      return Container(
                        margin: EdgeInsets.symmetric(),
                        height: 600,
                        width: 600,
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(widget.unitList1.length, (index) => Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: InkWell(
                                  child: Row(
                                    children: [Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 12),
                                         child: Center(child: Text(widget.shortUnitList1[index])),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                      height: 30,
                                      width: 35,
                                    ),

                                      Text(widget.unitList1[index],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  onTap: (){
                                    setState(() {
                                      selectedUnits=  widget.unitList1[index];
                                      if(widget.title == "Temperature") {
                                        temperatureConversion();
                                      }else{
                                        convert();
                                      }
                                    });
                                    Navigator.pop(context);
                                  },
                                ),
                              )),
                            )
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade50,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: 170,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(  selectedUnits3
                              ,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            const SizedBox(width: 5,),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                       Text(result.toString()

                       )

                      ],
                    ),
                  ),

                ),
                onTap: (){
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {

                      return SizedBox(
                        height: 600,
                        width: 600,
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(widget.unitList2.length, (index) => Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: InkWell(
                                  child: Row(

                                    children: [Container(
                                      margin: EdgeInsets.symmetric(horizontal: 12),
                                      child: Center(child: Text(widget.shortUnitList2[index])),
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      height: 30,
                                      width: 35,
                                    ),

                                      Text(widget.unitList1[index],style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  onTap: () {
                                    setState(() {
                                      selectedUnits3 = widget.unitList1[index];
                                      if(widget.title == "Temperature") {
                                        temperatureConversion();
                                      }else{
                                        convert();
                                      }
                                    });
                                    Navigator.pop(context);

                                  }


                                ),
                              )),
                            )
                          ),
                        ),
                      );
                    },
                  );
                },
              ),

            ],
          ),
        ),
      )
    );
  }




  // fun(num){

    // String selectedUnits = 'Kilometer';
    // String selectedUnits3 = 'Kilometer';
    TextEditingController valueController = TextEditingController();


    void convert() {
      double inputValue = double.tryParse(controller.text) ?? 0.0;
      double conversionFactor = getConversionFactor(selectedUnits, selectedUnits3);
      result = inputValue * conversionFactor;

      print('gggggggggg   $result');


      setState(() {});
    }

    double getConversionFactor(String fromUnit, String toUnit) {
      Map<String, double> conversionFactors = {
        //length
        'Kilometer-Meter': 1000,
        'Kilometer-Centimeter': 100000,
        'Kilometer-Millimeter': 1e+6,
        'Kilometer-Micrometer': 1e+9,
        'Kilometer-Nanometer': 1e+12,
        'Kilometer-Angstrom': 1e+13,
        'Kilometer-Mile': 1e+6,
        'Kilometer-Yard': 1094,
        'Kilometer-Foot': 3281,
        'Kilometer-Inch': 39370.1,
        'Kilometer-Nautical Mile': 0.539957,
        'Kilometer-Fathom': 546.807,
        'Kilometer-Astronomical Unit': 6.68459e-9,
        'Kilometer-Light Year': 1.057e-13,
        'Kilometer-Parsec': 3.241e-14,
        'Meter-Centimeter': 100,
        'Meter-Millimeter': 1000,
        'Meter-Micrometer': 1e+6,
        'Meter-Nanometer': 1e+9,
        'Meter-Angstrom': 1e+10,
        'Meter-Mile': 1000,
        'Meter-Yard': 1.09361,
        'Meter-Foot': 3.28084,
        'Meter-Inch': 39.3701,
        'Meter-Nautical Mile': 0.000539957,
        'Meter-Fathom': 0.546807,
        'Meter-Astronomical Unit': 6.68459e-12,
        'Meter-Light Year': 1.057e-16,
        'Meter-Parsec': 3.241e-17,

        'Centimeter-Millimeter': 10,
        'Centimeter-Micrometer': 1e+4,
        'Centimeter-Nanometer': 1e+7,
        'Centimeter-Angstrom': 1e+8,
        'Centimeter-Mile': 10,
        'Centimeter-Yard': 0.0109361,
        'Centimeter-Foot': 0.0328084,
        'Centimeter-Inch': 0.393701,
        'Centimeter-Nautical Mile': 5.3996e-6,
        'Centimeter-Fathom': 0.00546807,
        'Centimeter-Astronomical Unit': 6.68459e-14,
        'Centimeter-Light Year': 1.057e-18,
        'Centimeter-Parsec': 3.241e-19,

        'Millimeter-Micrometer': 1000,
        'Millimeter-Nanometer': 1e+6,
        'Millimeter-Angstrom': 1e+7,
        'Millimeter-Mile': 1,
        'Millimeter-Yard': 0.00109361,
        'Millimeter-Foot': 0.00328084,
        'Millimeter-Inch': 0.0393701,
        'Millimeter-Nautical Mile': 5.3996e-7,
        'Millimeter-Fathom': 0.000546807,
        'Millimeter-Astronomical Unit': 6.68459e-15,
        'Millimeter-Light Year': 1.057e-19,
        'Millimeter-Parsec': 3.241e-20,

        'Micrometer-Nanometer': 1000,
        'Micrometer-Angstrom': 1e+6,
        'Micrometer-Mile': 1e-3,
        'Micrometer-Yard': 1.09361e-6,
        'Micrometer-Foot': 3.28084e-6,
        'Micrometer-Inch': 3.93701e-5,
        'Micrometer-Nautical Mile': 5.3996e-10,
        'Micrometer-Fathom': 5.46807e-8,
        'Micrometer-Astronomical Unit': 6.68459e-18,
        'Micrometer-Light Year': 1.057e-22,
        'Micrometer-Parsec': 3.241e-23,

        'Nanometer-Angstrom': 10,
        'Nanometer-Mile': 1e-6,
        'Nanometer-Yard': 1.09361e-9,
        'Nanometer-Foot': 3.28084e-9,
        'Nanometer-Inch': 3.93701e-8,
        'Nanometer-Nautical Mile': 5.3996e-13,
        'Nanometer-Fathom': 5.46807e-11,
        'Nanometer-Astronomical Unit': 6.68459e-21,
        'Nanometer-Light Year': 1.057e-25,
        'Nanometer-Parsec': 3.241e-26,

        'Angstrom-Mile': 1e-13,
        'Angstrom-Yard': 1.09361e-10,
        'Angstrom-Foot': 3.28084e-10,
        'Angstrom-Inch': 3.93701e-9,
        'Angstrom-Nautical Mile': 5.3996e-14,
        'Angstrom-Fathom': 5.46807e-12,
        'Angstrom-Astronomical Unit': 6.68459e-22,
        'Angstrom-Light Year': 1.057e-26,
        'Angstrom-Parsec': 3.241e-27,

        'Mile-Yard': 1.09361e-9,
        'Mile-Foot': 3.28084e-9,
        'Mile-Inch': 3.93701e-8,
        'Mile-Nautical Mile': 5.3996e-13,
        'Mile-Fathom': 5.46807e-11,
        'Mile-Astronomical Unit': 6.68459e-21,
        'Mile-Light Year': 1.057e-25,
        'Mile-Parsec': 3.241e-26,

        'Yard-Foot': 3,
        'Yard-Inch': 36,
        'Yard-Nautical Mile': 0.000493737,
        'Yard-Fathom': 0.333333,
        'Yard-Astronomical Unit': 4.057e-13,
        'Yard-Light Year': 6.419e-14,
        'Yard-Parsec': 1.972e-14,

        'Foot-Inch': 12,
        'Foot-Nautical Mile': 0.000164579,
        'Foot-Fathom': 0.333333,
        'Foot-Astronomical Unit': 3.381e-13,
        'Foot-Light Year': 5.335e-14,
        'Foot-Parsec': 1.634e-14,

        'Inch-Nautical Mile': 0.0000137158,
        'Inch-Fathom': 0.0277778,
        'Inch-Astronomical Unit': 2.818e-13,
        'Inch-Light Year': 4.447e-14,
        'Inch-Parsec': 1.362e-14,

        'Nautical Mile-Fathom': 1852,
        'Nautical Mile-Astronomical Unit': 2.269e-12,
        'Nautical Mile-Light Year': 3.582e-13,
        'Nautical Mile-Parsec': 1.099e-13,

        'Fathom-Astronomical Unit': 1.223e-12,
        'Fathom-Light Year': 1.931e-13,
        'Fathom-Parsec': 5.92e-14,

        'Astronomical Unit-Light Year': 0.157473,
        'Astronomical Unit-Parsec': 4.84814e-6,

        'Light Year-Parsec': 3.262,
        'Parsec-Kilometer': 3.086e+13,
        'Parsec-Meter': 3.086e+16,
        'Parsec-Centimeter': 3.086e+18,
        'Parsec-Millimeter': 3.086e+19,
        'Parsec-Micrometer': 3.086e+22,
        'Parsec-Nanometer': 3.086e+25,
        'Parsec-Angstrom': 3.086e+26,
        'Parsec-Mile': 3.086e+19,
        'Parsec-Yard': 3.377e+16,
        'Parsec-Foot': 1.026e+17,
        'Parsec-Inch': 1.231e+18,
        'Parsec-Nautical Mile': 1.689e+13,
        'Parsec-Fathom': 1.716e+16,
        'Parsec-Light Year': 0.306601,
        'Meter-Mile': 1000,
        'Centimeter-Mile': 10,
        'Millimeter-Mile': 1,
        'Micrometer-Mile': 1e-3,
        'Nanometer-Mile': 1e-6,
        'Angstrom-Mile': 1e-7,
        'Mile-Meter': 1e-3,
        'Mile-Centimeter': 0.1,
        'Mile-Millimeter': 0.001,
        'Mile-Micrometer': 1e-6,
        'Mile-Nanometer': 1e-9,
        'Mile-Angstrom': 1e-10,

        'Yard-Nanometer': 9.144e+12,
        'Yard-Micrometer': 9.144e+15,
        'Yard-Mile': 914.4,
        'Foot-Nanometer': 3.048e+12,
        'Foot-Micrometer': 3.048e+15,
        'Foot-Mile': 304.8,
        'Inch-Nanometer': 2.54e+11,
        'Inch-Micrometer': 2.54e+14,
        'Inch-Mile': 25.4,
        'Nautical Mile-Yard': 2025.37,
        'Nautical Mile-Foot': 6076.12,
        'Nautical Mile-Inch': 72913.4,
        'Fathom-Nanometer': 1.8288e+15,
        'Fathom-Micrometer': 1.8288e+18,
        'Fathom-Mile': 1828.8,
        'Astronomical Unit-Yard': 2.061e+13,
        'Astronomical Unit-Foot': 6.264e+13,
        'Astronomical Unit-Inch': 7.517e+14,
        'Light Year-Yard': 5.879e+12,
        'Light Year-Foot': 1.784e+13,
        'Light Year-Inch': 2.141e+14,

        //area
        'Sq.Kilometer-Sq.Meter': 1e+6,
      'Sq.Kilometer-Sq.Centimeter': 1e+10,
      'Sq.Kilometer-Sq.Millimeter': 1e+12,
      'Sq.Kilometer-Sq.Mile': 0.239,
      'Sq.Kilometer-Sq.Yard': 1.196e+6,
      'Sq.Kilometer-Sq.Foot': 1.076e+7,
      'Sq.Kilometer-Sq.Inch': 1.55e+9,
      'Sq.Kilometer-Acre': 247.105,
      'Sq.Kilometer-Hectare': 100,

      'Sq.Meter-Sq.Centimeter': 1e+4,
      'Sq.Meter-Sq.Millimeter': 1e+6,
      'Sq.Meter-Sq.Mile': 3.861e-7,
      'Sq.Meter-Sq.Yard': 1.19599,
      'Sq.Meter-Sq.Foot': 10.7639,
      'Sq.Meter-Sq.Inch': 1550.0031,
      'Sq.Meter-Acre': 0.000247105,
      'Sq.Meter-Hectare': 0.0001,

      'Sq.Centimeter-Sq.Millimeter': 100,
      'Sq.Centimeter-Sq.Meter': 0.0001,
      'Sq.Centimeter-Sq.Kilometer': 1e-10,
      'Sq.Centimeter-Sq.Mile': 3.861e-13,
      'Sq.Centimeter-Sq.Yard': 1.19599e-6,
      'Sq.Centimeter-Sq.Foot': 1.07639e-5,
      'Sq.Centimeter-Sq.Inch': 0.15500031,
      'Sq.Centimeter-Acre': 2.47105e-8,
      'Sq.Centimeter-Hectare': 1e-10,

      'Sq.Millimeter-Sq.Centimeter': 0.01,
      'Sq.Millimeter-Sq.Meter': 1e-6,
      'Sq.Millimeter-Sq.Kilometer': 1e-12,
      'Sq.Millimeter-Sq.Mile': 3.861e-16,
      'Sq.Millimeter-Sq.Yard': 1.19599e-9,
      'Sq.Millimeter-Sq.Foot': 1.07639e-8,
      'Sq.Millimeter-Sq.Inch': 0.0015500031,
      'Sq.Millimeter-Acre': 2.47105e-12,
      'Sq.Millimeter-Hectare': 1e-12,

      'Sq.Mile-Sq.Kilometer': 2.58999,
      'Sq.Mile-Sq.Meter': 2.58999e+6,
      'Sq.Mile-Sq.Centimeter': 2.58999e+10,
      'Sq.Mile-Sq.Millimeter': 2.58999e+12,
      'Sq.Mile-Sq.Yard': 3.098e+6,
      'Sq.Mile-Sq.Foot': 2.788e+7,
      'Sq.Mile-Sq.Inch': 4.014e+9,
      'Sq.Mile-Acre': 640,
      'Sq.Mile-Hectare': 259,

      'Sq.Yard-Sq.Kilometer': 8.36127e-7,
      'Sq.Yard-Sq.Meter': 0.836127,
      'Sq.Yard-Sq.Centimeter': 8361.27,
      'Sq.Yard-Sq.Millimeter': 836127,
      'Sq.Yard-Sq.Mile': 3.22831e-7,
      'Sq.Yard-Sq.Foot': 9,
      'Sq.Yard-Sq.Inch': 1296,
      'Sq.Yard-Acre': 0.000206612,
      'Sq.Yard-Hectare': 8.36127e-5,

      'Sq.Foot-Sq.Kilometer': 9.2903e-8,
      'Sq.Foot-Sq.Meter': 0.092903,
      'Sq.Foot-Sq.Centimeter': 929.03,
      'Sq.Foot-Sq.Millimeter': 92903,
      'Sq.Foot-Sq.Mile': 3.587e-8,
      'Sq.Foot-Sq.Yard': 0.111111,
      'Sq.Foot-Sq.Inch': 144,
      'Sq.Foot-Acre': 2.2957e-5,
      'Sq.Foot-Hectare': 9.2903e-6,

      'Sq.Inch-Sq.Kilometer': 6.4516e-10,
      'Sq.Inch-Sq.Meter': 0.00064516,
      'Sq.Inch-Sq.Centimeter': 6.4516,
      'Sq.Inch-Sq.Millimeter': 645.16,
      'Sq.Inch-Sq.Mile': 2.491e-10,
      'Sq.Inch-Sq.Yard': 0.000771605,
      'Sq.Inch-Sq.Foot': 0.00694444,
      'Sq.Inch-Acre': 1.5942e-7,
      'Sq.Inch-Hectare': 6.4516e-8,

      'Acre-Sq.Kilometer': 0.00404686,
      'Acre-Sq.Meter': 4046.86,
      'Acre-Sq.Centimeter': 40468600,
      'Acre-Sq.Millimeter': 4.04686e+10,
      'Acre-Sq.Inch': 6.273e+6,
      'Acre-Sq.Mile': 0.0015625,
      'Acre-Sq.Yard': 4840,
      'Acre-Sq.Foot': 43560,
      'Acre-Hectare': 0.404686,

      'Hectare-Sq.Kilometer': 0.01,
      'Hectare-Sq.Meter': 10000,
      'Hectare-Sq.Centimeter': 1e+6,
      'Hectare-Sq.Millimeter': 1e+10,
      'Hectare-Sq.Inch': 1.55e+7,
      'Hectare-Sq.Mile': 3.861e-6,
      'Hectare-Sq.Yard': 11959.9,
      'Hectare-Sq.Foot': 107639,
      'Hectare-Acre': 0.404686,

      //mas conversation

      'Kilogram-Gram': 1000,
      'Kilogram-Milligram': 1e+6,
      'Kilogram-Micrograms': 1e+9,
      'Kilogram-Tonne': 0.001,
      'Kilogram-Pound': 2.20462,
      'Kilogram-Ounce': 35.274,
      'Kilogram-Grain': 15432.4,
      'Kilogram-Dram': 564.383,
      'Kilogram-Stone': 0.157473,
      'Kilogram-Long Ton': 0.000984207,
      'Kilogram-Short Ton': 0.00110231,

      'Gram-Milligram': 1000,
      'Gram-Micrograms': 1e+6,
      'Gram-Tonne': 0.001,
      'Gram-Pound': 0.00220462,
      'Gram-Ounce': 0.035274,
      'Gram-Grain': 15.4324,
      'Gram-Dram': 0.564383,
      'Gram-Stone': 0.000157473,
      'Gram-Long Ton': 9.8421e-7,
      'Gram-Short Ton': 0.00000110231,

      'Milligram-Micrograms': 1000,
      'Milligram-Tonne': 1e-6,
      'Milligram-Pound': 2.2046e-6,
      'Milligram-Ounce': 3.5274e-5,
      'Milligram-Grain': 0.0154324,
      'Milligram-Dram': 0.000564383,
      'Milligram-Stone': 1.5747e-7,
      'Milligram-Long Ton': 9.8421e-10,
      'Milligram-Short Ton': 1.1023e-9,

      'Micrograms-Tonne': 1e-9,
      'Micrograms-Pound': 2.2046e-9,
      'Micrograms-Ounce': 3.5274e-8,
      'Micrograms-Grain': 1.5432e-5,
      'Micrograms-Dram': 5.6434e-7,
      'Micrograms-Stone': 1.5747e-10,
      'Micrograms-Long Ton': 9.8421e-13,
      'Micrograms-Short Ton': 1.1023e-12,

      'Tonne-Pound': 2204.62,
      'Tonne-Ounce': 35273.96,
      'Tonne-Grain': 1.5432e+7,
      'Tonne-Dram': 564383.39,
      'Tonne-Stone': 157.473,
      'Tonne-Long Ton': 0.98420653,
      'Tonne-Short Ton': 1.10231131,

      'Pound-Ounce': 16,
      'Pound-Grain': 7000,
      'Pound-Dram': 256,
      'Pound-Stone': 0.0714286,
      'Pound-Long Ton': 0.000446429,
      'Pound-Short Ton': 0.0005,

      'Ounce-Grain': 437.5,
      'Ounce-Dram': 16,
      'Ounce-Stone': 0.00446429,
      'Ounce-Long Ton': 2.7778e-5,
      'Ounce-Short Ton': 3.125e-5,

      'Grain-Dram': 0.0365714,
      'Grain-Stone': 0.0000102041,
      'Grain-Long Ton': 6.3776e-8,
      'Grain-Short Ton': 7.1429e-8,

      'Dram-Stone': 0.000273214,
      'Dram-Long Ton': 1.7149e-6,
      'Dram-Short Ton': 1.917e-6,

      'Stone-Long Ton': 0.00625,
      'Stone-Short Ton': 0.007,

      'Long Ton-Short Ton': 1.12,

        //temperature
         'Celsius-Fahrenheit':  (9/5) +32,
        'Celsius-Kelvin': 1,
        'Celsius-Rankine': (9/5)+273.15,

      'Fahrenheit-Celsius': 32 * (5/9),
      'Fahrenheit-Kelvin': 5/9 * 1.8,
      'Fahrenheit-Rankine': 1.8,

      'Kelvin-Celsius': 1,
      'Kelvin-Fahrenheit': 1.8,
      'Kelvin-Rankine': 1.8,

        'Rankine-Celsius': (5 / 9) - 273.15,
      'Rankine-Fahrenheit': 5/9,
      'Rankine-Kelvin': 1,

        'Celsius': 1.0,
        'Fahrenheit': 33.8,
        'Kelvin': 274.15,
        'Rankine': 493.47,

      //speed
      'Kilometer/hour-Meter/sec': 0.277778,
      'Kilometer/hour-Miles/hour': 0.621371,
      'Kilometer/hour-Miles/minute': 0.0103558,
      'Kilometer/hour-Miles/sec': 0.000172597,
      'Kilometer/hour-Feet/hour': 3280.84,
      'Kilometer/hour-Feet/minute': 54.6807,
      'Kilometer/hour-Feet/sec': 0.911345,
      'Kilometer/hour-Knot': 0.539957,

      'Meter/sec-Kilometer/hour': 3.6,
      'Meter/sec-Miles/hour': 2.23694,
      'Meter/sec-Miles/minute': 0.0372823,
      'Meter/sec-Miles/sec': 0.000621371,
      'Meter/sec-Feet/hour': 11811,
      'Meter/sec-Feet/minute': 196.85,
      'Meter/sec-Feet/sec': 3.28084,
      'Meter/sec-Knot': 1.94384,

      'Miles/hour-Kilometer/hour': 1.60934,
      'Miles/hour-Meter/sec': 0.44704,
      'Miles/hour-Miles/minute': 0.0166667,
      'Miles/hour-Miles/sec': 0.000277778,
      'Miles/hour-Feet/hour': 5280,
      'Miles/hour-Feet/minute': 88,
      'Miles/hour-Feet/sec': 1.46667,
      'Miles/hour-Knot': 0.868976,

      'Miles/minute-Kilometer/hour': 96.5606,
      'Miles/minute-Meter/sec': 26.8224,
      'Miles/minute-Miles/hour': 60,
      'Miles/minute-Miles/sec': 0.0166667,
      'Miles/minute-Feet/hour': 316800,
      'Miles/minute-Feet/minute': 5280,
      'Miles/minute-Feet/sec': 88,
      'Miles/minute-Knot': 52.1386,

      'Miles/sec-Kilometer/hour': 5793.64,
      'Miles/sec-Meter/sec': 1609.34,
      'Miles/sec-Miles/hour': 3600,
      'Miles/sec-Miles/minute': 60,
      'Miles/sec-Feet/hour': 19008000,
      'Miles/sec-Feet/minute': 316800,
      'Miles/sec-Feet/sec': 5280,
      'Miles/sec-Knot': 3085.41,

      'Feet/hour-Kilometer/hour': 0.0003048,
      'Feet/hour-Meter/sec': 0.0000846667,
      'Feet/hour-Miles/hour': 0.000189394,
      'Feet/hour-Miles/minute': 3.15657e-06,
      'Feet/hour-Miles/sec': 5.26094e-08,
      'Feet/hour-Feet/minute': 0.000166667,
      'Feet/hour-Feet/sec': 2.77778e-06,
      'Feet/hour-Knot': 1.68861e-06,

      'Feet/minute-Kilometer/hour': 0.018288,
      'Feet/minute-Meter/sec': 0.00508,
      'Feet/minute-Miles/hour': 0.0113636,
      'Feet/minute-Miles/minute': 0.000189394,
      'Feet/minute-Miles/sec': 3.15657e-06,
      'Feet/minute-Feet/hour': 60,
      'Feet/minute-Feet/sec': 0.0166667,
      'Feet/minute-Knot': 0.00987473,

      'Feet/sec-Kilometer/hour': 1.09728,
      'Feet/sec-Meter/sec': 0.3048,
      'Feet/sec-Miles/hour': 0.681818,
      'Feet/sec-Miles/minute': 0.0113636,
      'Feet/sec-Miles/sec': 0.000189394,
      'Feet/sec-Feet/hour': 3600,
      'Feet/sec-Feet/minute': 60,
      'Feet/sec-Knot': 0.592484,

      'Knot-Kilometer/hour': 1.852,
      'Knot-Meter/sec': 0.514444,
      'Knot-Miles/hour': 1.15078,
      'Knot-Miles/minute': 0.0191796,
      'Knot-Miles/sec': 0.00031966,
      'Knot-Feet/hour': 6076.12,
      'Knot-Feet/minute': 101.268,
      'Knot-Feet/sec': 1.6878,
      //volume
      'Liter-Milliliter': 1000,
      'Liter-Centiliter': 100,
      'Liter-Deciliter': 10,
      'Liter-Cubic Meter': 1e-3,
      'Liter-Cubic Centimeter': 1000,
      'Liter-Cubic Millimeter': 1e+6,
      'Liter-Cubic Foot': 0.0353147,
      'Liter-Cubic Inch': 61.0237,
      'Liter-Acre Foot': 8.10713e-7,
      'Liter-Fluid Ounce (US)': 33.814,
      'Liter-Gill (US)': 4.39935,
      'Liter-Pint (US)': 2.11338,
      'Liter-Quart (US)': 1.05669,
      'Liter-Barrel (US)': 0.00838641,
      'Liter-Fluid Ounce (Imperial)': 35.1951,
      'Liter-Gill (Imperial)': 4.54609,
      'Liter-Pint (Imperial)': 1.13652,
      'Liter-Quart (Imperial)': 0.568261,
      'Liter-Gallon (Imperial)': 0.219969,
      'Liter-Barrel (Imperial)': 0.00628981,

      'Milliliter-Liter': 0.001,
      'Milliliter-Centiliter': 0.1,
      'Milliliter-Deciliter': 0.01,
      'Milliliter-Cubic Meter': 1e-6,
      'Milliliter-Cubic Centimeter': 1,
      'Milliliter-Cubic Millimeter': 1e+3,
      'Milliliter-Cubic Foot': 3.53147e-5,
      'Milliliter-Cubic Inch': 0.0610237,
      'Milliliter-Acre Foot': 8.10713e-10,
      'Milliliter-Fluid Ounce (US)': 0.033814,
      'Milliliter-Gill (US)': 0.00439935,
      'Milliliter-Pint (US)': 0.00211338,
      'Milliliter-Quart (US)': 0.00105669,
      'Milliliter-Barrel (US)': 8.38641e-6,
      'Milliliter-Fluid Ounce (Imperial)': 0.0351951,
      'Milliliter-Gill (Imperial)': 0.00454609,
      'Milliliter-Pint (Imperial)': 0.00113652,
      'Milliliter-Quart (Imperial)': 0.000568261,
      'Milliliter-Gallon (Imperial)': 0.000219969,
      'Milliliter-Barrel (Imperial)': 6.28981e-6,

      'Centiliter-Liter': 0.01,
      'Centiliter-Milliliter': 10,
      'Centiliter-Deciliter': 0.1,
      'Centiliter-Cubic Meter': 1e-5,
      'Centiliter-Cubic Centimeter': 100,
      'Centiliter-Cubic Millimeter': 1e+5,
      'Centiliter-Cubic Foot': 3.53147e-6,
      'Centiliter-Cubic Inch': 6.10237,
      'Centiliter-Acre Foot': 8.10713e-9,
      'Centiliter-Fluid Ounce (US)': 0.33814,
      'Centiliter-Gill (US)': 0.0439935,
      'Centiliter-Pint (US)': 0.0211338,
      'Centiliter-Quart (US)': 0.0105669,
      'Centiliter-Barrel (US)': 8.38641e-5,
      'Centiliter-Fluid Ounce (Imperial)': 0.351951,
      'Centiliter-Gill (Imperial)': 0.0454609,
      'Centiliter-Pint (Imperial)': 0.0113652,
      'Centiliter-Quart (Imperial)': 0.00568261,
      'Centiliter-Gallon (Imperial)': 0.00219969,
      'Centiliter-Barrel (Imperial)': 6.28981e-5,

      'Deciliter-Liter': 0.1,
      'Deciliter-Centiliter': 10,
      'Deciliter-Milliliter': 100,
      'Deciliter-Cubic Meter': 1e-4,
      'Deciliter-Cubic Centimeter': 1000,
      'Deciliter-Cubic Millimeter': 1e+6,
      'Deciliter-Cubic Foot': 3.53147e-5,
      'Deciliter-Cubic Inch': 61.0237,
      'Deciliter-Acre Foot': 8.10713e-8,
      'Deciliter-Fluid Ounce (US)': 3.3814,
      'Deciliter-Gill (US)': 0.439935,
      'Deciliter-Pint (US)': 0.211338,
      'Deciliter-Quart (US)': 0.105669,
      'Deciliter-Barrel (US)': 8.38641e-4,
      'Deciliter-Fluid Ounce (Imperial)': 3.51951,
      'Deciliter-Gill (Imperial)': 0.454609,
      'Deciliter-Pint (Imperial)': 0.113652,
      'Deciliter-Quart (Imperial)': 0.0568261,
      'Deciliter-Gallon (Imperial)': 0.0219969,
      'Deciliter-Barrel (Imperial)': 0.000628981,

      'Cubic Meter-Liter': 1000,
      'Cubic Meter-Centiliter': 1e+5,
      'Cubic Meter-Deciliter': 1e+4,
      'Cubic Meter-Milliliter': 1e+6,
      'Cubic Meter-Cubic Centimeter': 1e+6,
      'Cubic Meter-Cubic Millimeter': 1e+9,
      'Cubic Meter-Cubic Foot': 35.3147,
      'Cubic Meter-Cubic Inch': 61023.7,
      'Cubic Meter-Acre Foot': 8.10713,
      'Cubic Meter-Fluid Ounce (US)': 33814,
      'Cubic Meter-Gill (US)': 4399.35,
      'Cubic Meter-Pint (US)': 2113.38,
      'Cubic Meter-Quart (US)': 1056.69,
      'Cubic Meter-Barrel (US)': 8.38641,
      'Cubic Meter-Fluid Ounce (Imperial)': 35195.1,
      'Cubic Meter-Gill (Imperial)': 45460.9,
      'Cubic Meter-Pint (Imperial)': 11365.2,
      'Cubic Meter-Quart (Imperial)': 5682.61,
      'Cubic Meter-Gallon (Imperial)': 2199.69,
      'Cubic Meter-Barrel (Imperial)': 6.28981,

      'Cubic Centimeter-Liter': 0.001,
      'Cubic Centimeter-Deciliter': 0.0001,
      'Cubic Centimeter-Milliliter': 1,
      'Cubic Centimeter-Cubic Meter': 1e-6,
      'Cubic Centimeter-Cubic Millimeter': 1000,
      'Cubic Centimeter-Cubic Foot': 3.53147e-5,
      'Cubic Centimeter-Cubic Inch': 0.0610237,
      'Cubic Centimeter-Acre Foot': 8.10713e-10,
      'Cubic Centimeter-Fluid Ounce (US)': 0.033814,
      'Cubic Centimeter-Gill (US)': 0.00439935,
      'Cubic Centimeter-Pint (US)': 0.00211338,
      'Cubic Centimeter-Quart (US)': 0.00105669,
      'Cubic Centimeter-Barrel (US)': 8.38641e-6,
      'Cubic Centimeter-Fluid Ounce (Imperial)': 0.0351951,
      'Cubic Centimeter-Gill (Imperial)': 0.0454609,
      'Cubic Centimeter-Pint (Imperial)': 0.0113652,
      'Cubic Centimeter-Quart (Imperial)': 0.00568261,
      'Cubic Centimeter-Gallon (Imperial)': 0.000219969,
      'Cubic Centimeter-Barrel (Imperial)': 6.28981e-7,

      'Cubic Millimeter-Liter': 1e-6,
      'Cubic Millimeter-Deciliter': 1e-7,
      'Cubic Millimeter-Milliliter': 0.001,
      'Cubic Millimeter-Cubic Meter': 1e-9,
      'Cubic Millimeter-Cubic Centimeter': 0.001,
      'Cubic Millimeter-Cubic Foot': 3.53147e-8,
      'Cubic Millimeter-Cubic Inch': 0.0610237 * 1e-3,
      'Cubic Millimeter-Acre Foot': 8.10713e-13,
      'Cubic Millimeter-Fluid Ounce (US)': 0.033814 * 1e-3,
      'Cubic Millimeter-Gill (US)': 0.00439935 * 1e-3,
      'Cubic Millimeter-Pint (US)': 0.00211338 * 1e-3,
      'Cubic Millimeter-Quart (US)': 0.00105669 * 1e-3,
      'Cubic Millimeter-Barrel (US)': 8.38641e-6 * 1e-3,
      'Cubic Millimeter-Fluid Ounce (Imperial)': 0.0351951 * 1e-3,
      'Cubic Millimeter-Gill (Imperial)': 0.0454609 * 1e-3,
      'Cubic Millimeter-Pint (Imperial)': 0.0113652 * 1e-3,
      'Cubic Millimeter-Quart (Imperial)': 0.00568261 * 1e-3,
      'Cubic Millimeter-Gallon (Imperial)': 0.000219969 * 1e-3,
      'Cubic Millimeter-Barrel (Imperial)': 6.28981e-7 * 1e-3,

      'Cubic Foot-Liter': 28.3168,
      'Cubic Foot-Deciliter': 283.168,
      'Cubic Foot-Milliliter': 28316.8,
      'Cubic Foot-Cubic Meter': 0.0283168,
      'Cubic Foot-Cubic Centimeter': 28316800,
      'Cubic Foot-Cubic Millimeter': 28316800000,
      'Cubic Foot-Cubic Inch': 1728,
      'Cubic Foot-Acre Foot': 6.22884e-6,
      'Cubic Foot-Fluid Ounce (US)': 957.506,
      'Cubic Foot-Gill (US)': 119.688,
      'Cubic Foot-Pint (US)': 59.8442,
      'Cubic Foot-Quart (US)': 29.9221,
      'Cubic Foot-Barrel (US)': 7.48052,
      'Cubic Foot-Fluid Ounce (Imperial)': 996.613,
      'Cubic Foot-Gill (Imperial)': 124.577,
      'Cubic Foot-Pint (Imperial)': 62.2881,
      'Cubic Foot-Quart (Imperial)': 31.1441,
      'Cubic Foot-Gallon (Imperial)': 6.22884,
      'Cubic Foot-Barrel (Imperial)': 0.178107,

      'Acre Foot-Liter': 1233.48,
      'Acre Foot-Deciliter': 12334.8,
      'Acre Foot-Milliliter': 1233480,
      'Acre Foot-Cubic Meter': 1233.48,
      'Acre Foot-Cubic Centimeter': 1.23348e+12,
      'Acre Foot-Cubic Millimeter': 1.23348e+15,
      'Acre Foot-Cubic Inch': 7.48176e+7,
      'Acre Foot-Cubic Foot': 43.5605,
      'Acre Foot-Fluid Ounce (US)': 3.972e+7,
      'Acre Foot-Gill (US)': 4.965e+6,
      'Acre Foot-Pint (US)': 2.4825e+6,
      'Acre Foot-Quart (US)': 1.24125e+6,
      'Acre Foot-Gallon (US)': 325851,
      'Acre Foot-Fluid Ounce (Imperial)': 4.354e+7,
      'Acre Foot-Gill (Imperial)': 5.4425e+6,
      'Acre Foot-Pint (Imperial)': 2.72125e+6,
      'Acre Foot-Quart (Imperial)': 1.36062e+6,
      'Acre Foot-Gallon (Imperial)': 301984,

      'Fluid Ounce (US)-Liter': 0.0295735,
      'Fluid Ounce (US)-Milliliter': 29.5735,
      'Fluid Ounce (US)-Centiliter': 2.95735,
      'Fluid Ounce (US)-Deciliter': 0.295735,
      'Fluid Ounce (US)-Cubic Meter': 2.95735e-5,
      'Fluid Ounce (US)-Cubic Centimeter': 29.5735,
      'Fluid Ounce (US)-Cubic Millimeter': 29573.5,
      'Fluid Ounce (US)-Cubic Foot': 0.00104438,
      'Fluid Ounce (US)-Cubic Inch': 1.80469,
      'Fluid Ounce (US)-Acre Foot': 7.48915e-12,
      'Fluid Ounce (US)-Gill (US)': 0.118294,
      'Fluid Ounce (US)-Pint (US)': 0.0625,
      'Fluid Ounce (US)-Quart (US)': 0.03125,
      'Fluid Ounce (US)-Gallon (US)': 0.0078125,
      'Fluid Ounce (US)-Fluid Ounce (Imperial)': 0.96076,
      'Fluid Ounce (US)-Gill (Imperial)': 0.120095,
      'Fluid Ounce (US)-Pint (Imperial)': 0.0600477,
      'Fluid Ounce (US)-Quart (Imperial)': 0.0300239,
      'Fluid Ounce (US)-Gallon (Imperial)': 0.00660719,

      'Gill (US)-Liter': 0.118294,
      'Gill (US)-Milliliter': 118.294,
      'Gill (US)-Centiliter': 11.8294,
      'Gill (US)-Deciliter': 1.18294,
      'Gill (US)-Cubic Meter': 0.000118294,
      'Gill (US)-Cubic Centimeter': 118.294,
      'Gill (US)-Cubic Millimeter': 118294,
      'Gill (US)-Cubic Foot': 0.00417148,
      'Gill (US)-Cubic Inch': 7.23756,
      'Gill (US)-Acre Foot': 3.02077e-11,
      'Gill (US)-Fluid Ounce (US)': 8,
      'Gill (US)-Pint (US)': 0.5,
      'Gill (US)-Quart (US)': 0.25,
      'Gill (US)-Gallon (US)': 0.0625,
      'Gill (US)-Fluid Ounce (Imperial)': 7.7512,
      'Gill (US)-Gill (Imperial)': 1.20095,
      'Gill (US)-Pint (Imperial)': 0.600477,
      'Gill (US)-Quart (Imperial)': 0.300238,
      'Gill (US)-Gallon (Imperial)': 0.0660719,

      'Pint (US)-Liter': 0.473176,
      'Pint (US)-Milliliter': 473.176,
      'Pint (US)-Centiliter': 47.3176,
      'Pint (US)-Deciliter': 4.73176,
      'Pint (US)-Cubic Meter': 0.000473176,
      'Pint (US)-Cubic Centimeter': 473.176,
      'Pint (US)-Cubic Millimeter': 473176,
      'Pint (US)-Cubic Foot': 0.0167109,
      'Pint (US)-Cubic Inch': 28.875,
      'Pint (US)-Acre Foot': 1.20539e-10,
      'Pint (US)-Fluid Ounce (US)': 16,
      'Pint (US)-Gill (US)': 2,
      'Pint (US)-Quart (US)': 0.5,
      'Pint (US)-Gallon (US)': 0.125,
      'Pint (US)-Fluid Ounce (Imperial)': 15.5046,
      'Pint (US)-Gill (Imperial)': 2.4019,
      'Pint (US)-Pint (Imperial)': 0.600238,
      'Pint (US)-Quart (Imperial)': 0.300119,
      'Pint (US)-Gallon (Imperial)': 0.0660439,

      'Quart (US)-Liter': 0.946353,
      'Quart (US)-Milliliter': 946.353,
      'Quart (US)-Centiliter': 94.6353,
      'Quart (US)-Deciliter': 9.46353,
      'Quart (US)-Cubic Meter': 0.000946353,
      'Quart (US)-Cubic Centimeter': 946.353,
      'Quart (US)-Cubic Millimeter': 946353,
      'Quart (US)-Cubic Foot': 0.0334218,
      'Quart (US)-Cubic Inch': 57.75,
      'Quart (US)-Acre Foot': 2.41078e-10,
      'Quart (US)-Fluid Ounce (US)': 32,
      'Quart (US)-Gill (US)': 4,
      'Quart (US)-Pint (US)': 0.5,
      'Quart (US)-Gallon (US)': 0.25,
      'Quart (US)-Fluid Ounce (Imperial)': 31.0092,
      'Quart (US)-Gill (Imperial)': 4.8038,
      'Quart (US)-Pint (Imperial)': 1.20048,
      'Quart (US)-Gallon (Imperial)': 0.264172,

      'Gallon (US)-Liter': 3.78541,
      'Gallon (US)-Milliliter': 3785.41,
      'Gallon (US)-Centiliter': 378.541,
      'Gallon (US)-Deciliter': 37.8541,
      'Gallon (US)-Cubic Meter': 0.00378541,
      'Gallon (US)-Cubic Centimeter': 3785410,
      'Gallon (US)-Cubic Millimeter': 3.78541e+9,
      'Gallon (US)-Cubic Foot': 0.133681,
      'Gallon (US)-Cubic Inch': 231,
      'Gallon (US)-Acre Foot': 9.68842e-10,
      'Gallon (US)-Fluid Ounce (US)': 128,
      'Gallon (US)-Gill (US)': 16,
      'Gallon (US)-Pint (US)': 8,
      'Gallon (US)-Quart (US)': 4,
      'Gallon (US)-Fluid Ounce (Imperial)': 160,
      'Gallon (US)-Gill (Imperial)': 19.2152,
      'Gallon (US)-Pint (Imperial)': 4.8038,
      'Gallon (US)-Quart (Imperial)': 1.20095,

      'Fluid Ounce (Imperial)-Liter': 0.0284131,
      'Fluid Ounce (Imperial)-Milliliter': 28.4131,
      'Fluid Ounce (Imperial)-Centiliter': 2.84131,
      'Fluid Ounce (Imperial)-Deciliter': 0.284131,
      'Fluid Ounce (Imperial)-Cubic Meter': 2.84131e-5,
      'Fluid Ounce (Imperial)-Cubic Centimeter': 28413.1,
      'Fluid Ounce (Imperial)-Cubic Millimeter': 2.84131e+7,
      'Fluid Ounce (Imperial)-Cubic Foot': 0.001,
      'Fluid Ounce (Imperial)-Cubic Inch': 1.73387,
      'Fluid Ounce (Imperial)-Acre Foot': 7.27304e-12,
      'Fluid Ounce (Imperial)-Fluid Ounce (US)': 0.00625,
      'Fluid Ounce (Imperial)-Gill (US)': 0.005,
      'Fluid Ounce (Imperial)-Pint (US)': 0.0025,
      'Fluid Ounce (Imperial)-Quart (US)': 0.00125,
      'Fluid Ounce (Imperial)-Gallon (US)': 0.000160416,
      'Fluid Ounce (Imperial)-Gill (Imperial)': 0.00625,
      'Fluid Ounce (Imperial)-Pint (Imperial)': 0.25,
      'Fluid Ounce (Imperial)-Quart (Imperial)': 0.125,
      'Fluid Ounce (Imperial)-Gallon (Imperial)': 0.00625,

      'Gill (Imperial)-Liter': 0.142065,
      'Gill (Imperial)-Milliliter': 142.065,
      'Gill (Imperial)-Centiliter': 14.2065,
      'Gill (Imperial)-Deciliter': 1.42065,
      'Gill (Imperial)-Cubic Meter': 0.000142065,
      'Gill (Imperial)-Cubic Centimeter': 142065,
      'Gill (Imperial)-Cubic Millimeter': 1.42065e+8,
      'Gill (Imperial)-Cubic Foot': 0.005,
      'Gill (Imperial)-Cubic Inch': 307.443,
      'Gill (Imperial)-Acre Foot': 1.28512e-11,
      'Gill (Imperial)-Fluid Ounce (US)': 5.76471,
      'Gill (Imperial)-Gill (US)': 4.61357,
      'Gill (Imperial)-Pint (US)': 2.30679,
      'Gill (Imperial)-Quart (US)': 1.1534,
      'Gill (Imperial)-Gallon (US)': 0.288349,
      'Gill (Imperial)-Fluid Ounce (Imperial)': 5.76471,
      'Gill (Imperial)-Pint (Imperial)': 0.25,
      'Gill (Imperial)-Quart (Imperial)': 0.125,
      'Gill (Imperial)-Gallon (Imperial)': 0.03125,

      'Pint (Imperial)-Liter': 0.568261,
      'Pint (Imperial)-Milliliter': 568.261,
      'Pint (Imperial)-Centiliter': 56.8261,
      'Pint (Imperial)-Deciliter': 5.68261,
      'Pint (Imperial)-Cubic Meter': 0.000568261,
      'Pint (Imperial)-Cubic Centimeter': 568261,
      'Pint (Imperial)-Cubic Millimeter': 5.68261e+8,
      'Pint (Imperial)-Cubic Foot': 0.0201131,
      'Pint (Imperial)-Cubic Inch': 34.6774,
      'Pint (Imperial)-Acre Foot': 1.44345e-11,
      'Pint (Imperial)-Fluid Ounce (US)': 20,
      'Pint (Imperial)-Gill (US)': 8,
      'Pint (Imperial)-Pint (US)': 0.832674,
      'Pint (Imperial)-Quart (US)': 0.416337,
      'Pint (Imperial)-Gallon (US)': 0.104084,
      'Pint (Imperial)-Fluid Ounce (Imperial)': 20,
      'Pint (Imperial)-Gill (Imperial)': 4,
      'Pint (Imperial)-Quart (Imperial)': 0.5,
      'Pint (Imperial)-Gallon (Imperial)': 0.125,

      'Quart (Imperial)-Liter': 1.13652,
      'Quart (Imperial)-Milliliter': 1136.52,
      'Quart (Imperial)-Centiliter': 113.652,
      'Quart (Imperial)-Deciliter': 11.3652,
      'Quart (Imperial)-Cubic Meter': 0.00113652,
      'Quart (Imperial)-Cubic Centimeter': 1.13652e+6,
      'Quart (Imperial)-Cubic Millimeter': 1.13652e+9,
      'Quart (Imperial)-Cubic Foot': 0.0402263,
      'Quart (Imperial)-Cubic Inch': 69.3549,
      'Quart (Imperial)-Acre Foot': 2.8869e-11,
      'Quart (Imperial)-Fluid Ounce (US)': 32,
      'Quart (Imperial)-Gill (US)': 16,
      'Quart (Imperial)-Pint (US)': 1.66535,
      'Quart (Imperial)-Gallon (US)': 0.416837,
      'Quart (Imperial)-Fluid Ounce (Imperial)': 32,
      'Quart (Imperial)-Gill (Imperial)': 8,
      'Quart (Imperial)-Pint (Imperial)': 2,
      'Quart (Imperial)-Gallon (Imperial)': 0.25,

      'Gallon (Imperial)-Liter': 4.54609,
      'Gallon (Imperial)-Milliliter': 4546.09,
      'Gallon (Imperial)-Centiliter': 454.609,
      'Gallon (Imperial)-Deciliter': 45.4609,
      'Gallon (Imperial)-Cubic Meter': 0.00454609,
      'Gallon (Imperial)-Cubic Centimeter': 4.54609e+6,
      'Gallon (Imperial)-Cubic Millimeter': 4.54609e+9,
      'Gallon (Imperial)-Cubic Foot': 0.160544,
      'Gallon (Imperial)-Cubic Inch': 277.419,
      'Gallon (Imperial)-Acre Foot': 1.1838e-10,
      'Gallon (Imperial)-Fluid Ounce (US)': 160,
      'Gallon (Imperial)-Gill (US)': 32,
      'Gallon (Imperial)-Pint (US)': 3.3307,
      'Gallon (Imperial)-Quart (US)': 1.66535,
      'Gallon (Imperial)-Fluid Ounce (Imperial)': 160,
      'Gallon (Imperial)-Gill (Imperial)': 32,
      'Gallon (Imperial)-Pint (Imperial)': 8,
      'Gallon (Imperial)-Quart (Imperial)': 4,

      'Barrel (Imperial)-Liter': 163.659,
      'Barrel (Imperial)-Milliliter': 163659,
      'Barrel (Imperial)-Centiliter': 16365.9,
      'Barrel (Imperial)-Deciliter': 1636.59,
      'Barrel (Imperial)-Cubic Meter': 0.163659,
      'Barrel (Imperial)-Cubic Centimeter': 1.63659e+8,
      'Barrel (Imperial)-Cubic Millimeter': 1.63659e+11,
      'Barrel (Imperial)-Cubic Foot': 5.77366,
      'Barrel (Imperial)-Cubic Inch': 9985.42,
      'Barrel (Imperial)-Acre Foot': 4.266e-11,
      'Barrel (Imperial)-Fluid Ounce (US)': 140,
      'Barrel (Imperial)-Gill (US)': 28,
      'Barrel (Imperial)-Pint (US)': 2.91653,
      'Barrel (Imperial)-Quart (US)': 1.45827,
      'Barrel (Imperial)-Fluid Ounce (Imperial)': 140,
      'Barrel (Imperial)-Gill (Imperial)': 28,
      'Barrel (Imperial)-Pint (Imperial)': 7,
      'Barrel (Imperial)-Quart (Imperial)': 3.5,
      'Barrel (Imperial)-Gallon (Imperial)': 0.875,

      //cooking
      'Liter-Milliliter': 1000,
      'Liter-Teaspoon (US)': 202.884,
      'Liter-Tablespoon (US)': 67.628,
      'Liter-Cup (US)': 4.16667,
      'Liter-Fluid Ounce (US)': 33.814,
      'Liter-Pint (US)': 2.11338,
      'Liter-Quart (US)': 1.05669,
      'Liter-Gallon (US)': 0.264172,
      'Liter-Teaspoon (Imperial)': 175.975,
      'Liter-Tablespoon (Imperial)': 56.3121,
      'Liter-Cup (Imperial)': 4.54609,
      'Liter-Fluid Ounce (Imperial)': 35.1951,
      'Liter-Pint (Imperial)': 1.75975,
      'Liter-Quart (Imperial)': 0.879877,
      'Liter-Gallon (Imperial)': 0.219969,
      'Liter-Drop': 20000,

      'Milliliter-Liter': 0.001,
      'Milliliter-Teaspoon (US)': 0.202884,
      'Milliliter-Tablespoon (US)': 0.067628,
      'Milliliter-Cup (US)': 0.00416667,
      'Milliliter-Fluid Ounce (US)': 0.033814,
      'Milliliter-Pint (US)': 0.00211338,
      'Milliliter-Quart (US)': 0.00105669,
      'Milliliter-Gallon (US)': 0.000264172,
      'Milliliter-Teaspoon (Imperial)': 0.175975,
      'Milliliter-Tablespoon (Imperial)': 0.0563121,
      'Milliliter-Cup (Imperial)': 0.00454609,
      'Milliliter-Fluid Ounce (Imperial)': 0.0351951,
      'Milliliter-Pint (Imperial)': 0.00175975,
      'Milliliter-Quart (Imperial)': 0.000879877,
      'Milliliter-Gallon (Imperial)': 0.000219969,
      'Milliliter-Drop': 20,

      'Teaspoon (US)-Liter': 0.00591939,
      'Teaspoon (US)-Milliliter': 5.91939,
      'Teaspoon (US)-Tablespoon (US)': 0.333333,
      'Teaspoon (US)-Cup (US)': 0.0208333,
      'Teaspoon (US)-Fluid Ounce (US)': 0.166667,
      'Teaspoon (US)-Pint (US)': 0.0104167,
      'Teaspoon (US)-Quart (US)': 0.00520833,
      'Teaspoon (US)-Gallon (US)': 0.00130208,
      'Teaspoon (US)-Teaspoon (Imperial)': 0.833333,
      'Teaspoon (US)-Tablespoon (Imperial)': 0.267966,
      'Teaspoon (US)-Cup (Imperial)': 0.0216327,
      'Teaspoon (US)-Fluid Ounce (Imperial)': 0.168936,
      'Teaspoon (US)-Pint (Imperial)': 0.0084468,
      'Teaspoon (US)-Quart (Imperial)': 0.0042234,
      'Teaspoon (US)-Gallon (Imperial)': 0.00105585,
      'Teaspoon (US)-Drop': 96,

      'Tablespoon (US)-Liter': 0.0177582,
      'Tablespoon (US)-Milliliter': 17.7582,
      'Tablespoon (US)-Teaspoon (US)': 3,
      'Tablespoon (US)-Cup (US)': 0.0625,
      'Tablespoon (US)-Fluid Ounce (US)': 0.5,
      'Tablespoon (US)-Pint (US)': 0.03125,
      'Tablespoon (US)-Quart (US)': 0.015625,
      'Tablespoon (US)-Gallon (US)': 0.00390625,
      'Tablespoon (US)-Teaspoon (Imperial)': 2.01042,
      'Tablespoon (US)-Tablespoon (Imperial)': 0.666667,
      'Tablespoon (US)-Cup (Imperial)': 0.0549823,
      'Tablespoon (US)-Fluid Ounce (Imperial)': 0.429691,
      'Tablespoon (US)-Pint (Imperial)': 0.0214843,
      'Tablespoon (US)-Quart (Imperial)': 0.0107422,
      'Tablespoon (US)-Gallon (Imperial)': 0.00268555,
      'Tablespoon (US)-Drop': 288,

      'Cup (US)-Liter': 0.236588,
      'Cup (US)-Milliliter': 236.588,
      'Cup (US)-Teaspoon (US)': 48,
      'Cup (US)-Tablespoon (US)': 16,
      'Cup (US)-Fluid Ounce (US)': 8,
      'Cup (US)-Pint (US)': 0.5,
      'Cup (US)-Quart (US)': 0.25,
      'Cup (US)-Gallon (US)': 0.0625,
      'Cup (US)-Teaspoon (Imperial)': 39.7815,
      'Cup (US)-Tablespoon (Imperial)': 13.2605,
      'Cup (US)-Cup (Imperial)': 0.833333,
      'Cup (US)-Fluid Ounce (Imperial)': 6.7628,
      'Cup (US)-Pint (Imperial)': 0.422675,
      'Cup (US)-Quart (Imperial)': 0.211338,
      'Cup (US)-Gallon (Imperial)': 0.052834,
      'Cup (US)-Drop': 576,

      'Fluid Ounce (US)-Liter': 0.0295735,
      'Fluid Ounce (US)-Milliliter': 29.5735,
      'Fluid Ounce (US)-Teaspoon (US)': 6,
      'Fluid Ounce (US)-Tablespoon (US)': 2,
      'Fluid Ounce (US)-Cup (US)': 0.125,
      'Fluid Ounce (US)-Pint (US)': 0.0625,
      'Fluid Ounce (US)-Quart (US)': 0.03125,
      'Fluid Ounce (US)-Gallon (US)': 0.0078125,
      'Fluid Ounce (US)-Teaspoon (Imperial)': 4.80381,
      'Fluid Ounce (US)-Tablespoon (Imperial)': 1.60127,
      'Fluid Ounce (US)-Cup (Imperial)': 0.100005,
      'Fluid Ounce (US)-Fluid Ounce (Imperial)': 0.96076,
      'Fluid Ounce (US)-Pint (Imperial)': 0.0600472,
      'Fluid Ounce (US)-Quart (Imperial)': 0.0300236,
      'Fluid Ounce (US)-Gallon (Imperial)': 0.00750469,
      'Fluid Ounce (US)-Drop': 518.172,

      'Pint (US)-Liter': 0.473176,
      'Pint (US)-Milliliter': 473.176,
      'Pint (US)-Teaspoon (US)': 96,
      'Pint (US)-Tablespoon (US)': 32,
      'Pint (US)-Cup (US)': 2,
      'Pint (US)-Fluid Ounce (US)': 16,
      'Pint (US)-Quart (US)': 0.5,
      'Pint (US)-Gallon (US)': 0.125,
      'Pint (US)-Teaspoon (Imperial)': 115.291,
      'Pint (US)-Tablespoon (Imperial)': 38.4304,
      'Pint (US)-Cup (Imperial)': 2.40188,
      'Pint (US)-Fluid Ounce (Imperial)': 19.2152,
      'Pint (US)-Pint (Imperial)': 0.832674,
      'Pint (US)-Quart (Imperial)': 0.416337,
      'Pint (US)-Gallon (Imperial)': 0.10409,
      'Pint (US)-Drop': 9070.79,

      'Quart (US)-Liter': 0.946353,
      'Quart (US)-Milliliter': 946.353,
      'Quart (US)-Teaspoon (US)': 192,
      'Quart (US)-Tablespoon (US)': 64,
      'Quart (US)-Cup (US)': 4,
      'Quart (US)-Fluid Ounce (US)': 32,
      'Quart (US)-Pint (US)': 0.5,
      'Quart (US)-Gallon (US)': 0.25,
      'Quart (US)-Teaspoon (Imperial)': 230.582,
      'Quart (US)-Tablespoon (Imperial)': 76.8608,
      'Quart (US)-Cup (Imperial)': 4.80377,
      'Quart (US)-Fluid Ounce (Imperial)': 38.4304,
      'Quart (US)-Pint (Imperial)': 1.66535,
      'Quart (US)-Gallon (Imperial)': 0.208168,
      'Quart (US)-Drop': 18141.6,

      'Gallon (US)-Liter': 3.78541,
      'Gallon (US)-Milliliter': 3785.41,
      'Gallon (US)-Teaspoon (US)': 768,
      'Gallon (US)-Tablespoon (US)': 256,
      'Gallon (US)-Cup (US)': 16,
      'Gallon (US)-Fluid Ounce (US)': 128,
      'Gallon (US)-Pint (US)': 8,
      'Gallon (US)-Quart (US)': 4,
      'Gallon (US)-Teaspoon (Imperial)': 922.329,
      'Gallon (US)-Tablespoon (Imperial)': 307.443,
      'Gallon (US)-Cup (Imperial)': 19.2152,
      'Gallon (US)-Fluid Ounce (Imperial)': 153.722,
      'Gallon (US)-Pint (Imperial)': 6.66069,
      'Gallon (US)-Quart (Imperial)': 3.33034,
      'Gallon (US)-Drop': 36283.2,

      'Teaspoon (Imperial)-Liter': 0.00591939,
      'Teaspoon (Imperial)-Milliliter': 5.91939,
      'Teaspoon (Imperial)-Teaspoon (US)': 1.20095,
      'Teaspoon (Imperial)-Tablespoon (US)': 0.400317,
      'Teaspoon (Imperial)-Cup (US)': 0.025,
      'Teaspoon (Imperial)-Fluid Ounce (US)': 0.200764,
      'Teaspoon (Imperial)-Pint (US)': 0.0125,
      'Teaspoon (Imperial)-Quart (US)': 0.00625,
      'Teaspoon (Imperial)-Gallon (US)': 0.00130208,
      'Teaspoon (Imperial)-Tablespoon (Imperial)': 0.333333,
      'Teaspoon (Imperial)-Cup (Imperial)': 0.0208333,
      'Teaspoon (Imperial)-Fluid Ounce (Imperial)': 0.166667,
      'Teaspoon (Imperial)-Pint (Imperial)': 0.00721875,
      'Teaspoon (Imperial)-Quart (Imperial)': 0.00360938,
      'Teaspoon (Imperial)-Gallon (Imperial)': 0.000752819,
      'Teaspoon (Imperial)-Drop': 8188.79,

      'Tablespoon (Imperial)-Liter': 0.0177582,
      'Tablespoon (Imperial)-Milliliter': 17.7582,
      'Tablespoon (Imperial)-Teaspoon (US)': 3,
      'Tablespoon (Imperial)-Tablespoon (US)': 1.00093,
      'Tablespoon (Imperial)-Cup (US)': 0.0625,
      'Tablespoon (Imperial)-Fluid Ounce (US)': 0.500911,
      'Tablespoon (Imperial)-Pint (US)': 0.03125,
      'Tablespoon (Imperial)-Quart (US)': 0.015625,
      'Tablespoon (Imperial)-Gallon (US)': 0.00325521,
      'Tablespoon (Imperial)-Teaspoon (Imperial)': 9,
      'Tablespoon (Imperial)-Cup (Imperial)': 0.0625,
      'Tablespoon (Imperial)-Fluid Ounce (Imperial)': 0.5,
      'Tablespoon (Imperial)-Pint (Imperial)': 0.021875,
      'Tablespoon (Imperial)-Quart (Imperial)': 0.0109375,
      'Tablespoon (Imperial)-Gallon (Imperial)': 0.00229568,
      'Tablespoon (Imperial)-Drop': 24566.4,

      'Cup (Imperial)-Liter': 0.284131,
      'Cup (Imperial)-Milliliter': 284.131,
      'Cup (Imperial)-Teaspoon (US)': 48.6922,
      'Cup (Imperial)-Tablespoon (US)': 16.2307,
      'Cup (Imperial)-Cup (US)': 0.961038,
      'Cup (Imperial)-Fluid Ounce (US)': 9.61538,
      'Cup (Imperial)-Pint (US)': 0.480769,
      'Cup (Imperial)-Quart (US)': 0.240385,
      'Cup (Imperial)-Gallon (US)': 0.0600962,
      'Cup (Imperial)-Teaspoon (Imperial)': 48,
      'Cup (Imperial)-Tablespoon (Imperial)': 16,
      'Cup (Imperial)-Fluid Ounce (Imperial)': 10,
      'Cup (Imperial)-Pint (Imperial)': 0.5,
      'Cup (Imperial)-Quart (Imperial)': 0.25,
      'Cup (Imperial)-Gallon (Imperial)': 0.0625,
      'Cup (Imperial)-Drop': 65609.2,

      'Fluid Ounce (US)-Liter': 0.0295735,
      'Fluid Ounce (US)-Milliliter': 29.5735,
      'Fluid Ounce (US)-Teaspoon (US)': 6,
      'Fluid Ounce (US)-Tablespoon (US)': 2,
      'Fluid Ounce (US)-Cup (US)': 0.125,
      'Fluid Ounce (US)-Fluid Ounce (Imperial)': 0.96076,
      'Fluid Ounce (US)-Pint (US)': 0.0625,
      'Fluid Ounce (US)-Quart (US)': 0.03125,
      'Fluid Ounce (US)-Gallon (US)': 0.0078125,
      'Fluid Ounce (US)-Teaspoon (Imperial)': 5.91939,
      'Fluid Ounce (US)-Tablespoon (Imperial)': 1.97313,
      'Fluid Ounce (US)-Cup (Imperial)': 0.104084,
      'Fluid Ounce (US)-Pint (Imperial)': 0.0520421,
      'Fluid Ounce (US)-Quart (Imperial)': 0.026021,
      'Fluid Ounce (US)-Gallon (Imperial)': 0.00650526,
      'Fluid Ounce (US)-Drop': 614.888,

      'Pint (Imperial)-Liter': 0.568261,
      'Pint (Imperial)-Milliliter': 568.261,
      'Pint (Imperial)-Teaspoon (US)': 96,
      'Pint (Imperial)-Tablespoon (US)': 32,
      'Pint (Imperial)-Cup (US)': 2.40188,
      'Pint (Imperial)-Fluid Ounce (US)': 20,
      'Pint (Imperial)-Fluid Ounce (Imperial)': 19.2152,
      'Pint (Imperial)-Quart (US)': 0.5,
      'Pint (Imperial)-Gallon (US)': 0.125,
      'Pint (Imperial)-Teaspoon (Imperial)': 92.9612,
      'Pint (Imperial)-Tablespoon (Imperial)': 31.3204,
      'Pint (Imperial)-Cup (Imperial)': 1.66535,
      'Pint (Imperial)-Quart (Imperial)': 0.5,
      'Pint (Imperial)-Gallon (Imperial)': 0.125,
      'Pint (Imperial)-Drop': 11829.4,
      'Quart (Imperial)-Liter': 1.13652,
      'Quart (Imperial)-Milliliter': 1136.52,
      'Quart (Imperial)-Teaspoon (US)': 192,
      'Quart (Imperial)-Tablespoon (US)': 64,
      'Quart (Imperial)-Cup (US)': 4.80377,
      'Quart (Imperial)-Fluid Ounce (US)': 40,
      'Quart (Imperial)-Fluid Ounce (Imperial)': 38.4304,
      'Quart (Imperial)-Pint (US)': 1.201,
      'Quart (Imperial)-Gallon (US)': 0.25,
      'Quart (Imperial)-Teaspoon (Imperial)': 185.923,
      'Quart (Imperial)-Tablespoon (Imperial)': 62.6409,
      'Quart (Imperial)-Cup (Imperial)': 3.3307,
      'Quart (Imperial)-Pint (Imperial)': 1.05669,
      'Quart (Imperial)-Gallon (Imperial)': 0.25,
      'Quart (Imperial)-Drop': 35517.5,
      'Gallon (Imperial)-Liter': 4.54609,
      'Gallon (Imperial)-Milliliter': 4546.09,
      'Gallon (Imperial)-Teaspoon (US)': 768,
      'Gallon (Imperial)-Tablespoon (US)': 256,
      'Gallon (Imperial)-Cup (US)': 19.2158,
      'Gallon (Imperial)-Fluid Ounce (US)': 160,
      'Gallon (Imperial)-Fluid Ounce (Imperial)': 153.722,
      'Gallon (Imperial)-Pint (US)': 4.80377,
      'Gallon (Imperial)-Quart (US)': 1.201,
      'Gallon (Imperial)-Teaspoon (Imperial)': 743.715,
      'Gallon (Imperial)-Tablespoon (Imperial)': 248.905,
      'Gallon (Imperial)-Cup (Imperial)': 13.219,
      'Gallon (Imperial)-Pint (Imperial)': 4.40334,
      'Gallon (Imperial)-Quart (Imperial)': 1.10084,
      'Gallon (Imperial)-Drop': 71035,
      'Drop-Liter': 0.00005,
      'Drop-Milliliter': 0.05,
      'Drop-Teaspoon (US)': 0.00101442,
      'Drop-Tablespoon (US)': 0.00033814,
      'Drop-Cup (US)': 0.00002536,
      'Drop-Fluid Ounce (US)': 0.000202884,
      'Drop-Fluid Ounce (Imperial)': 0.000194128,
      'Drop-Pint (US)': 0.00000604338,
      'Drop-Quart (US)': 0.00000302169,
      'Drop-Teaspoon (Imperial)': 0.0000935176,
      'Drop-Tablespoon (Imperial)': 0.0000311725,
      'Drop-Cup (Imperial)': 0.00000165348,
      'Drop-Pint (Imperial)': 0.000000551161,
      'Drop-Quart (Imperial)': 0.000000275581,
      'Drop-Gallon (Imperial)': 0.0000000710212,

        //time
        'Hour-Minute': 60,
        'Hour-Second': 3600,
        'Hour-Millisecond': 3.6e+6,
        'Hour-Day': 0.0416667,
        'Hour-Week': 0.00595238,
        'Hour-Year': 8.766e-7,

        'Minute-Second': 60,
        'Minute-Millisecond': 60000,
        'Minute-Day': 0.000694444,
        'Minute-Week': 9.9206e-5,
        'Minute-Year': 1.901e-8,

        'Second-Millisecond': 1000,
        'Second-Day': 1.15741e-5,
        'Second-Week': 1.6534e-6,
        'Second-Year': 3.169e-10,

        'Millisecond-Day': 1.15741e-8,
        'Millisecond-Week': 1.6534e-9,
        'Millisecond-Year': 3.169e-13,

        'Day-Week': 0.142857,
        'Day-Year': 0.00273973,

        'Week-Year': 0.0191781,

        //fuel
        'Kilometer/liter-liter/100 Kilometer': 100,
        'Kilometer/liter-Mile/Gallon (US)': 2.35215,
        'Kilometer/liter-Mile/Gallon (Imperial)': 2.825,

        'liter/100 Kilometer-Kilometer/liter': 0.01,
        'liter/100 Kilometer-Mile/Gallon (US)': 0.235215,
        'liter/100 Kilometer-Mile/Gallon (Imperial)': 0.2825,

        'Mile/Gallon (US)-Kilometer/liter': 0.425144,
        'Mile/Gallon (US)-liter/100 Kilometer': 4.25144,
        'Mile/Gallon (US)-Mile/Gallon (Imperial)': 1.20095,

        'Mile/Gallon (Imperial)-Kilometer/liter': 0.354006,
        'Mile/Gallon (Imperial)-liter/100 Kilometer': 3.54609,
        'Mile/Gallon (Imperial)-Mile/Gallon (US)': 0.832674,
        //storage
        'Byte-Kilobyte': 1e-3,
        'Byte-Kibibyte': 0.000976563,
        'Byte-Megabyte': 1e-6,
        'Byte-Mebibyte': 9.53674e-7,
        'Byte-Gigabyte': 1e-9,
        'Byte-Gibibyte': 9.31323e-10,
        'Byte-Terabyte': 1e-12,
        'Byte-Tebibyte': 9.09495e-13,
        'Byte-Petabyte': 1e-15,
        'Byte-Pebibyte': 8.88178e-16,

        'Kilobyte-Byte': 1e+3,
        'Kilobyte-Kibibyte': 0.976563,
        'Kilobyte-Megabyte': 1e-3,
        'Kilobyte-Mebibyte': 0.000953674,
        'Kilobyte-Gigabyte': 1e-6,
        'Kilobyte-Gibibyte': 9.31323e-7,
        'Kilobyte-Terabyte': 1e-9,
        'Kilobyte-Tebibyte': 9.09495e-10,
        'Kilobyte-Petabyte': 1e-12,
        'Kilobyte-Pebibyte': 8.88178e-13,

        'Kibibyte-Byte': 1024,
        'Kibibyte-Kilobyte': 1.024,
        'Kibibyte-Megabyte': 1.04858e-3,
        'Kibibyte-Mebibyte': 1e-3,
        'Kibibyte-Gigabyte': 1.07374e-6,
        'Kibibyte-Gibibyte': 1.04858e-6,
        'Kibibyte-Terabyte': 1.09951e-9,
        'Kibibyte-Tebibyte': 1.07374e-9,
        'Kibibyte-Petabyte': 1.1259e-12,
        'Kibibyte-Pebibyte': 1.09951e-12,

        'Megabyte-Byte': 1e+6,
        'Megabyte-Kilobyte': 1e+3,
        'Megabyte-Kibibyte': 1.024e+3,
        'Megabyte-Mebibyte': 0.953674,
        'Megabyte-Gigabyte': 1e-3,
        'Megabyte-Gibibyte': 9.31323e-4,
        'Megabyte-Terabyte': 1e-6,
        'Megabyte-Tebibyte': 9.09495e-7,
        'Megabyte-Petabyte': 1e-9,
        'Megabyte-Pebibyte': 8.88178e-10,

        'Mebibyte-Byte': 1048576,
        'Mebibyte-Kilobyte': 1024,
        'Mebibyte-Kibibyte': 1.04858,
        'Mebibyte-Megabyte': 1.04858,
        'Mebibyte-Gigabyte': 1.07374e-3,
        'Mebibyte-Gibibyte': 1.04858e-3,
        'Mebibyte-Terabyte': 1.09951e-6,
        'Mebibyte-Tebibyte': 1.07374e-6,
        'Mebibyte-Petabyte': 1.1259e-9,
        'Mebibyte-Pebibyte': 1.09951e-9,

        'Gigabyte-Byte': 1e+9,
        'Gigabyte-Kilobyte': 1e+6,
        'Gigabyte-Kibibyte': 1.024e+6,
        'Gigabyte-Megabyte': 1e+3,
        'Gigabyte-Mebibyte': 953.674,
        'Gigabyte-Gibibyte': 0.931323,
        'Gigabyte-Terabyte': 1e-3,
        'Gigabyte-Tebibyte': 9.09495e-4,
        'Gigabyte-Petabyte': 1e-6,
        'Gigabyte-Pebibyte': 8.88178e-7,

        'Gibibyte-Byte': 1073741824,
        'Gibibyte-Kilobyte': 1048576,
        'Gibibyte-Kibibyte': 1.07374e+6,
        'Gibibyte-Megabyte': 1024,
        'Gibibyte-Mebibyte': 1.04858,
        'Gibibyte-Gigabyte': 1.07374e-3,
        'Gibibyte-Terabyte': 1.09951e-6,
        'Gibibyte-Tebibyte': 1.07374e-6,
        'Gibibyte-Petabyte': 1.1259e-9,
        'Gibibyte-Pebibyte': 1.09951e-9,

        'Terabyte-Byte': 1e+12,
        'Terabyte-Kilobyte': 1e+9,
        'Terabyte-Kibibyte': 1.024e+9,
        'Terabyte-Megabyte': 1e+6,
        'Terabyte-Mebibyte': 9.53674e+5,
        'Terabyte-Gigabyte': 1000,
        'Terabyte-Gibibyte': 976.563,
        'Terabyte-Tebibyte': 0.909495,
        'Terabyte-Petabyte': 1e-3,
        'Terabyte-Pebibyte': 9.09495e-4,

        'Tebibyte-Byte': 1099511627776,
        'Tebibyte-Kilobyte': 1.09951e+12,
        'Tebibyte-Kibibyte': 1.12676e+12,
        'Tebibyte-Megabyte': 1.09951e+9,
        'Tebibyte-Mebibyte': 1.07374e+9,
        'Tebibyte-Gigabyte': 1.09951e+6,
        'Tebibyte-Gibibyte': 1073741.824,
        'Tebibyte-Terabyte': 1.09951,
        'Tebibyte-Petabyte': 1e-3,
        'Tebibyte-Pebibyte': 0.909495,

        'Petabyte-Byte': 1e+15,
        'Petabyte-Kilobyte': 1e+12,
        'Petabyte-Kibibyte': 1.024e+12,
        'Petabyte-Megabyte': 1e+9,
        'Petabyte-Mebibyte': 9.53674e+8,
        'Petabyte-Gigabyte': 1e+6,
        'Petabyte-Gibibyte': 976.563,
        'Petabyte-Terabyte': 1000,
        'Petabyte-Tebibyte': 909.495,
        'Petabyte-Pebibyte': 0.909495,

        'Pebibyte-Byte': 1125899906842624,
        'Pebibyte-Kilobyte': 1.1259e+15,
        'Pebibyte-Kibibyte': 1.15292e+15,
        'Pebibyte-Megabyte': 1.1259e+12,
        'Pebibyte-Mebibyte': 1.09951e+12,
        'Pebibyte-Gigabyte': 1.1259e+9,
        'Pebibyte-Gibibyte': 1099511627776,
        'Pebibyte-Terabyte': 1.1259e+6,
        'Pebibyte-Tebibyte': 1.09951e+6,
        'Pebibyte-Petabyte': 1.09951,

        'Byte': 1,
        'Kilobyte': 1e+3,
        'Kibibyte': 1024,
        'Megabyte': 1e+6,
        'Mebibyte': 1048576,
        'Gigabyte': 1e+9,
        'Gibibyte': 1073741824,
        'Terabyte': 1e+12,
        'Tebibyte': 1099511627776,
        'Petabyte': 1e+15,
        'Pebibyte': 1125899906842624,
        // data transfer
        'Kilobit/second-Kilobyte/second': 0.125,
        'Kilobit/second-Megabit/second': 1e-3,
        'Kilobit/second-Megabyte/second': 1.25e-4,
        'Kilobit/second-Gigabit/second': 1e-6,
        'Kilobit/second-Gigabyte/second': 1.25e-7,

        'Kilobyte/second-Kilobit/second': 8,
        'Kilobyte/second-Megabit/second': 8e-3,
        'Kilobyte/second-Megabyte/second': 1e-3,
        'Kilobyte/second-Gigabit/second': 8e-6,
        'Kilobyte/second-Gigabyte/second': 1e-6,

        'Megabit/second-Kilobit/second': 1e+3,
        'Megabit/second-Kilobyte/second': 1e+3,
        'Megabit/second-Megabyte/second': 0.125,
        'Megabit/second-Gigabit/second': 1e-3,
        'Megabit/second-Gigabyte/second': 1.25e-4,

        'Megabyte/second-Kilobit/second': 8e+6,
        'Megabyte/second-Kilobyte/second': 8e+6,
        'Megabyte/second-Megabit/second': 8e+3,
        'Megabyte/second-Gigabit/second': 8e-3,
        'Megabyte/second-Gigabyte/second': 0.001,

        'Gigabit/second-Kilobit/second': 1e+6,
        'Gigabit/second-Kilobyte/second': 1e+6,
        'Gigabit/second-Megabit/second': 1e+3,
        'Gigabit/second-Megabyte/second': 0.125,
        'Gigabit/second-Gigabyte/second': 0.125,

        'Gigabyte/second-Kilobit/second': 8e+9,
        'Gigabyte/second-Kilobyte/second': 8e+9,
        'Gigabyte/second-Megabit/second': 8e+6,
        'Gigabyte/second-Megabyte/second': 8e+3,
        'Gigabyte/second-Gigabit/second': 8,
        // Data transfer rate units
        'Kilobit/second': 1,
        'Kilobyte/second': 8,
        'Megabit/second': 1e+3,
        'Megabyte/second': 8e+6,
        'Gigabit/second': 1e+9,
        'Gigabyte/second': 8e+9,
        //acceleration
        'Meter/sec²-Feet/sec²': 3.28084,
        'Meter/sec²-Gravity': 0.101972,
        'Meter/sec²-Gal': 100,

        'Feet/sec²-Meter/sec²': 0.3048,
        'Feet/sec²-Gravity': 0.032174,
        'Feet/sec²-Gal': 32.174,

        'Gravity-Meter/sec²': 9.80665,
        'Gravity-Feet/sec²': 32.174,
        'Gravity-Gal': 980.665,

        'Gal-Meter/sec²': 0.01,
        'Gal-Feet/sec²': 0.032174,
        'Gal-Gravity': 0.00102,
        // Acceleration units
        'Meter/sec²': 1,
        'Feet/sec²': 3.28084,
        'Gravity': 9.80665,
        'Gal': 100,

        //angle
        'Radian-Degree': 180 / 3.141592653589793,
        'Radian-Minute': 180 * 60 / 3.141592653589793,
        'Radian-Second': 180 * 3600 / 3.141592653589793,

        'Degree-Radian': 3.141592653589793 / 180,
        'Degree-Minute': 60,
        'Degree-Second': 3600,

        'Minute-Radian': 3.141592653589793 / (180 * 60),
        'Minute-Degree': 1 / 60,
        'Minute-Second': 60,

        'Second-Radian': 3.141592653589793 / (180 * 3600),
        'Second-Degree': 1 / 3600,
        'Second-Minute': 1 / 60,

        //energy
        'Kilocalorie-Calorie': 1000,
        'Kilocalorie-Kilojoule': 4.184,
        'Kilocalorie-Joule': 4184,
        'Kilocalorie-Kilowatt Hour': 1.16295e-3,
        'Kilocalorie-Watt Hour': 1.16295,
        'Kilocalorie-British Thermal Unit': 3.96832,
        'Kilocalorie-Erg': 4184000000,
        'Kilocalorie-Electronvolt': 2.611e+22,
        'Kilocalorie-Foot-Pound': 3088.0252,

        'Calorie-Kilocalorie': 1e-3,
        'Calorie-Kilojoule': 4.184e-3,
        'Calorie-Joule': 4.184,
        'Calorie-Kilowatt Hour': 1.16295e-6,
        'Calorie-Watt Hour': 1.16295e-3,
        'Calorie-British Thermal Unit': 3.96832e-3,
        'Calorie-Erg': 4184000,
        'Calorie-Electronvolt': 2.611e+19,
        'Calorie-Foot-Pound': 3.0880252,

        'Kilojoule-Kilocalorie': 0.239006,
        'Kilojoule-Calorie': 239.006,
        'Kilojoule-Joule': 1000,
        'Kilojoule-Kilowatt Hour': 2.77778e-4,
        'Kilojoule-Watt Hour': 2.77778e-1,
        'Kilojoule-British Thermal Unit': 0.947817,
        'Kilojoule-Erg': 1e+10,
        'Kilojoule-Electronvolt': 6.242e+18,
        'Kilojoule-Foot-Pound': 737.562,

        'Joule-Kilocalorie': 2.38846e-4,
        'Joule-Calorie': 0.239006,
        'Joule-Kilojoule': 1e-3,
        'Joule-Kilowatt Hour': 2.77778e-7,
        'Joule-Watt Hour': 2.77778e-4,
        'Joule-British Thermal Unit': 9.47817e-4,
        'Joule-Erg': 1e+7,
        'Joule-Electronvolt': 6.242e+15,
        'Joule-Foot-Pound': 0.737562,

        'Kilowatt Hour-Kilocalorie': 859.845,
        'Kilowatt Hour-Calorie': 859845,
        'Kilowatt Hour-Kilojoule': 3600,
        'Kilowatt Hour-Joule': 3.6e+6,
        'Kilowatt Hour-Watt Hour': 1000,
        'Kilowatt Hour-British Thermal Unit': 3412.14,
        'Kilowatt Hour-Erg': 3.6e+13,
        'Kilowatt Hour-Electronvolt': 2.247e+25,
        'Kilowatt Hour-Foot-Pound': 2.655e+6,

        'Watt Hour-Kilocalorie': 0.000859845,
        'Watt Hour-Calorie': 0.859845,
        'Watt Hour-Kilojoule': 0.0036,
        'Watt Hour-Joule': 3600,
        'Watt Hour-Kilowatt Hour': 0.001,
        'Watt Hour-British Thermal Unit': 3.41214,
        'Watt Hour-Erg': 3.6e+9,
        'Watt Hour-Electronvolt': 2.247e+22,
        'Watt Hour-Foot-Pound': 2655.22,

        'British Thermal Unit-Kilocalorie': 0.252164,
        'British Thermal Unit-Calorie': 252.164,
        'British Thermal Unit-Kilojoule': 1.05506,
        'British Thermal Unit-Joule': 1055.06,
        'British Thermal Unit-Kilowatt Hour': 0.000293071,
        'British Thermal Unit-Watt Hour': 0.293071,
        'British Thermal Unit-Erg': 1.055e+10,
        'British Thermal Unit-Electronvolt': 6.585e+18,
        'British Thermal Unit-Foot-Pound': 778.169,

        'Erg-Kilocalorie': 2.38846e-13,
        'Erg-Calorie': 2.38846e-10,
        'Erg-Kilojoule': 1e-10,
        'Erg-Joule': 1e-7,
        'Erg-Kilowatt Hour': 2.77778e-17,
        'Erg-Watt Hour': 2.77778e-14,
        'Erg-British Thermal Unit': 9.47817e-17,
        'Erg-Electronvolt': 6.242e+8,
        'Erg-Foot-Pound': 7.37562e-11,

        'Electronvolt-Kilocalorie': 3.82929e-20,
        'Electronvolt-Calorie': 3.82929e-17,
        'Electronvolt-Kilojoule': 1.60218e-19,
        'Electronvolt-Joule': 1.60218e-16,
        'Electronvolt-Kilowatt Hour': 4.45049e-23,
        'Electronvolt-Watt Hour': 4.45049e-20,
        'Electronvolt-British Thermal Unit': 1.51857e-22,
        'Electronvolt-Erg': 1.60218e-8,
        'Electronvolt-Foot-Pound': 1.88582e-17,

        'Foot-Pound-Kilocalorie': 3.23831e-4,
        'Foot-Pound-Calorie': 323.831,
        'Foot-Pound-Kilojoule': 0.00135582,
        'Foot-Pound-Joule': 1.35582,
        'Foot-Pound-Kilowatt Hour': 3.72506e-7,
        'Foot-Pound-Watt Hour': 3.72506e-4,
        'Foot-Pound-British Thermal Unit': 1.28507e-3,
        'Foot-Pound-Erg': 1.35582e+7,
        'Foot-Pound-Electronvolt': 8.46235e+18,
        // Energy units
        'Kilocalorie': 1,
        'Calorie': 1000,
        'Kilojoule': 4.184,
        'Joule': 4184,
        'Kilowatt Hour': 1.16295e-3,
        'Watt Hour': 1.16295,
        'British Thermal Unit': 3.96832,
        'Erg': 4184000000,
        'Electronvolt': 2.611e+22,
        'Foot-Pound': 3088.0252,

        //frequency
        'Hertz-Kilohertz': 1e-3,
        'Hertz-Megahertz': 1e-6,
        'Hertz-Gigahertz': 1e-9,

        'Kilohertz-Hertz': 1e+3,
        'Kilohertz-Megahertz': 1e-3,
        'Kilohertz-Gigahertz': 1e-6,

        'Megahertz-Hertz': 1e+6,
        'Megahertz-Kilohertz': 1e+3,
        'Megahertz-Gigahertz': 1e-3,

        'Gigahertz-Hertz': 1e+9,
        'Gigahertz-Kilohertz': 1e+6,
        'Gigahertz-Megahertz': 1e+3,
        //power
        'Watt-Kilowatt': 1e-3,
        'Watt-Megawatt': 1e-6,
        'Watt-Milliwatt': 1e+3,
        'Watt-Microwatt': 1e+6,
        'Watt-Nanowatt': 1e+9,
        'Watt-Horsepower': 1.34102e-3,
        'Watt-Horsepower (Metric)': 1.35962e-3,
        'Watt-dBm': 30,

        'Kilowatt-Watt': 1e+3,
        'Kilowatt-Megawatt': 1e-3,
        'Kilowatt-Milliwatt': 1e+6,
        'Kilowatt-Microwatt': 1e+9,
        'Kilowatt-Nanowatt': 1e+12,
        'Kilowatt-Horsepower': 1.34102,
        'Kilowatt-Horsepower (Metric)': 1.35962,
        // 'Kilowatt-dBm': 10*log10(1e3),

        'Megawatt-Watt': 1e+6,
        'Megawatt-Kilowatt': 1e+3,
        'Megawatt-Milliwatt': 1e+9,
        'Megawatt-Microwatt': 1e+12,
        'Megawatt-Nanowatt': 1e+15,
        'Megawatt-Horsepower': 1341.02,
        'Megawatt-Horsepower (Metric)': 1359.62,
        // 'Megawatt-dBm': 30 + 10 * log10(1e+6),

        'Milliwatt-Watt': 1e-3,
        'Milliwatt-Kilowatt': 1e-6,
        'Milliwatt-Megawatt': 1e-9,
        'Milliwatt-Microwatt': 1e+3,
        'Milliwatt-Nanowatt': 1e+6,
        'Milliwatt-Horsepower': 1.34102e-6,
        'Milliwatt-Horsepower (Metric)': 1.35962e-6,
        // 'Milliwatt-dBm': 30 - 10 * log10(1e+3),

        'Microwatt-Watt': 1e-6,
        'Microwatt-Kilowatt': 1e-9,
        'Microwatt-Megawatt': 1e-12,
        'Microwatt-Milliwatt': 1e-3,
        'Microwatt-Nanowatt': 1e+3,
        'Microwatt-Horsepower': 1.34102e-9,
        'Microwatt-Horsepower (Metric)': 1.35962e-9,
        // 'Microwatt-dBm': 30 - 10 * log10(1e+6),

        'Nanowatt-Watt': 1e-9,
        'Nanowatt-Kilowatt': 1e-12,
        'Nanowatt-Megawatt': 1e-15,
        'Nanowatt-Milliwatt': 1e-6,
        'Nanowatt-Microwatt': 1e-3,
        'Nanowatt-Horsepower': 1.34102e-12,
        'Nanowatt-Horsepower (Metric)': 1.35962e-12,
        // 'Nanowatt-dBm': 30 - 10 * log10(1e+9),

        'Horsepower-Watt': 745.7,
        'Horsepower-Kilowatt': 0.7457,
        'Horsepower-Megawatt': 7.457e-4,
        'Horsepower-Milliwatt': 745700,
        'Horsepower-Microwatt': 7.457e+8,
        'Horsepower-Nanowatt': 7.457e+11,
        'Horsepower-Horsepower (Metric)': 0.98632,
        // 'Horsepower-dBm': 30 + 10 * log10(745.7),

        'Horsepower (Metric)-Watt': 735.5,
        'Horsepower (Metric)-Kilowatt': 0.7355,
        'Horsepower (Metric)-Megawatt': 7.355e-4,
        'Horsepower (Metric)-Milliwatt': 735500,
        'Horsepower (Metric)-Microwatt': 7.355e+8,
        'Horsepower (Metric)-Nanowatt': 7.355e+11,
        'Horsepower (Metric)-Horsepower': 1.014,
        // 'Horsepower (Metric)-dBm': 30 + 10 * log10(735.5),

        'dBm-Watt': 1e-3,
        'dBm-Kilowatt': 1e-6,
        'dBm-Megawatt': 1e-9,
        'dBm-Milliwatt': 1e+3,
        'dBm-Microwatt': 1e+6,
        'dBm-Nanowatt': 1e+9,
        'dBm-Horsepower': 1.34102e-3,
        'dBm-Horsepower (Metric)': 1.35962e-3,
        //pressure
        'Bar-Pascal': 1e5,
        'Bar-Pound/Sq.Inch': 14.5038,
        'Bar-Standard Atmosphere': 0.986923,
        'Bar-Torr': 750.062,
        'Bar-Millimeter of mercury': 750.062,
        'Bar-Inch of mercury': 29.5299,

        'Pascal-Bar': 1e-5,
        'Pascal-Pound/Sq.Inch': 0.00014503773773375,
        'Pascal-Standard Atmosphere': 9.8692e-6,
        'Pascal-Torr': 0.00750062,
        'Pascal-Millimeter of mercury': 0.00750062,
        'Pascal-Inch of mercury': 0.0002952998307143,

        'Pound/Sq.Inch-Bar': 0.0689476,
        'Pound/Sq.Inch-Pascal': 6894.76,
        'Pound/Sq.Inch-Standard Atmosphere': 0.068046,
        'Pound/Sq.Inch-Torr': 51.7149,
        'Pound/Sq.Inch-Millimeter of mercury': 51.7149,
        'Pound/Sq.Inch-Inch of mercury': 2.03602,

        'Standard Atmosphere-Bar': 1.01325,
        'Standard Atmosphere-Pascal': 101325,
        'Standard Atmosphere-Pound/Sq.Inch': 14.696,
        'Standard Atmosphere-Torr': 760,
        'Standard Atmosphere-Millimeter of mercury': 760,
        'Standard Atmosphere-Inch of mercury': 29.9213,

        'Torr-Bar': 0.00133322,
        'Torr-Pascal': 133.322,
        'Torr-Pound/Sq.Inch': 0.0193368,
        'Torr-Standard Atmosphere': 0.00131579,
        'Torr-Millimeter of mercury': 1,
        'Torr-Inch of mercury': 0.0393701,

        'Millimeter of mercury-Bar': 0.00133322,
        'Millimeter of mercury-Pascal': 133.322,
        'Millimeter of mercury-Pound/Sq.Inch': 0.0193368,
        'Millimeter of mercury-Standard Atmosphere': 0.00131579,
        'Millimeter of mercury-Torr': 1,
        'Millimeter of mercury-Inch of mercury': 0.0393701,

        'Inch of mercury-Bar': 0.0338639,
        'Inch of mercury-Pascal': 3386.39,
        'Inch of mercury-Pound/Sq.Inch': 0.491154,
        'Inch of mercury-Standard Atmosphere': 0.0334211,
        'Inch of mercury-Torr': 25.4,
        'Inch of mercury-Millimeter of mercury': 25.4,
        //force
        'Newton-Dyne': 1e5,
        'Newton-Kilogram Force': 0.101972,
        'Newton-Pound Force': 0.224809,
        'Newton-Ton Force': 1.0197e-4,
        'Newton-Poundal': 7.23301,

        'Dyne-Newton': 1e-5,
        'Dyne-Kilogram Force': 1.0197e-8,
        'Dyne-Pound Force': 2.24809e-9,
        'Dyne-Ton Force': 1.0197e-12,
        'Dyne-Poundal': 7.23301e-6,

        'Kilogram Force-Newton': 9.80665,
        'Kilogram Force-Dyne': 9.80665e7,
        'Kilogram Force-Pound Force': 2.20462,
        'Kilogram Force-Ton Force': 1.10231e-3,
        'Kilogram Force-Poundal': 70.932,

        'Pound Force-Newton': 4.44822,
        'Pound Force-Dyne': 4.44822e5,
        'Pound Force-Kilogram Force': 0.453592,
        'Pound Force-Ton Force': 4.48087e-4,
        'Pound Force-Poundal': 32.174,

        'Ton Force-Newton': 9806.65,
        'Ton Force-Dyne': 9.80665e11,
        'Ton Force-Kilogram Force': 907.185,
        'Ton Force-Pound Force': 2240,
        'Ton Force-Poundal': 7.23301e4,

        'Poundal-Newton': 0.138255,
        'Poundal-Dyne': 13825.5,
        'Poundal-Kilogram Force': 0.0140981,
        'Poundal-Pound Force': 0.031081,
        'Poundal-Ton Force': 1.3808e-5,
        //torque
        'Newton Meter-Kilo Newton Meter': 1e-3,
        'Newton Meter-Mega Newton Meter': 1e-6,
        'Newton Meter-Milli Newton Meter': 1e3,
        'Newton Meter-Micro Newton Meter': 1e6,
        'Newton Meter-Pound Force Feet': 0.737562,
        'Newton Meter-Pound Force Inches': 8.85074,

        'Kilo Newton Meter-Newton Meter': 1e3,
        'Kilo Newton Meter-Mega Newton Meter': 1e-3,
        'Kilo Newton Meter-Milli Newton Meter': 1e6,
        'Kilo Newton Meter-Micro Newton Meter': 1e9,
        'Kilo Newton Meter-Pound Force Feet': 737.562,
        'Kilo Newton Meter-Pound Force Inches': 8850.74,

        'Mega Newton Meter-Newton Meter': 1e6,
        'Mega Newton Meter-Kilo Newton Meter': 1e3,
        'Mega Newton Meter-Milli Newton Meter': 1e9,
        'Mega Newton Meter-Micro Newton Meter': 1e12,
        'Mega Newton Meter-Pound Force Feet': 737562,
        'Mega Newton Meter-Pound Force Inches': 8.85074e6,

        'Milli Newton Meter-Newton Meter': 1e-3,
        'Milli Newton Meter-Kilo Newton Meter': 1e-6,
        'Milli Newton Meter-Mega Newton Meter': 1e-9,
        'Milli Newton Meter-Micro Newton Meter': 1e3,
        'Milli Newton Meter-Pound Force Feet': 7.37562e-4,
        'Milli Newton Meter-Pound Force Inches': 0.00885074,

        'Micro Newton Meter-Newton Meter': 1e-6,
        'Micro Newton Meter-Kilo Newton Meter': 1e-9,
        'Micro Newton Meter-Mega Newton Meter': 1e-12,
        'Micro Newton Meter-Milli Newton Meter': 1e-3,
        'Micro Newton Meter-Pound Force Feet': 7.37562e-7,
        'Micro Newton Meter-Pound Force Inches': 8.85074e-6,

        'Pound Force Feet-Newton Meter': 1.35582,
        'Pound Force Feet-Kilo Newton Meter': 0.00135582,
        'Pound Force Feet-Mega Newton Meter': 1.35582e-6,
        'Pound Force Feet-Milli Newton Meter': 1355.82,
        'Pound Force Feet-Micro Newton Meter': 1.35582e6,
        'Pound Force Feet-Pound Force Inches': 12,

        'Pound Force Inches-Newton Meter': 0.113,
        'Pound Force Inches-Kilo Newton Meter': 1.13e-4,
        'Pound Force Inches-Mega Newton Meter': 1.13e-7,
        'Pound Force Inches-Milli Newton Meter': 113,
        'Pound Force Inches-Micro Newton Meter': 113000,
        'Pound Force Inches-Pound Force Feet': 0.0833333,
        //density
        'Kilogram/cubic meter-Kilogram/cubic centimeter': 1e-6,
        'Kilogram/cubic meter-Gram/cubic millimeter': 1e9,
        'Kilogram/cubic meter-Gram/cubic meter': 1e3,
        'Kilogram/cubic meter-Gram/cubic centimeter': 1e6,
        'Kilogram/cubic meter-Kilogram/cubic millimeter': 1e9,
        'Kilogram/cubic meter-Tonne/cubic meter': 1e-3,
        'Kilogram/cubic meter-Tonne/cubic centimeter': 1e-9,
        'Kilogram/cubic meter-Tonne/cubic millimeter': 1e-12,

        'Kilogram/cubic centimeter-Kilogram/cubic meter': 1e6,
        'Kilogram/cubic centimeter-Gram/cubic millimeter': 1e15,
        'Kilogram/cubic centimeter-Gram/cubic meter': 1e9,
        'Kilogram/cubic centimeter-Gram/cubic centimeter': 1e12,
        'Kilogram/cubic centimeter-Kilogram/cubic millimeter': 1e15,
        'Kilogram/cubic centimeter-Tonne/cubic meter': 1e-6,
        'Kilogram/cubic centimeter-Tonne/cubic centimeter': 1e-12,
        'Kilogram/cubic centimeter-Tonne/cubic millimeter': 1e-15,

        'Gram/cubic millimeter-Kilogram/cubic meter': 1e-9,
        'Gram/cubic millimeter-Kilogram/cubic centimeter': 1e-15,
        'Gram/cubic millimeter-Gram/cubic meter': 1e6,
        'Gram/cubic millimeter-Gram/cubic centimeter': 1e3,
        'Gram/cubic millimeter-Kilogram/cubic millimeter': 1e6,
        'Gram/cubic millimeter-Tonne/cubic meter': 1e-12,
        'Gram/cubic millimeter-Tonne/cubic centimeter': 1e-15,
        'Gram/cubic millimeter-Tonne/cubic millimeter': 1e-18,

        'Gram/cubic meter-Kilogram/cubic meter': 1e-3,
        'Gram/cubic meter-Kilogram/cubic centimeter': 1e-9,
        'Gram/cubic meter-Gram/cubic millimeter': 1e-6,
        'Gram/cubic meter-Gram/cubic centimeter': 1e-3,
        'Gram/cubic meter-Kilogram/cubic millimeter': 1e6,
        'Gram/cubic meter-Tonne/cubic meter': 1e-6,
        'Gram/cubic meter-Tonne/cubic centimeter': 1e-9,
        'Gram/cubic meter-Tonne/cubic millimeter': 1e-12,

        'Gram/cubic centimeter-Kilogram/cubic meter': 1e-6,
        'Gram/cubic centimeter-Kilogram/cubic centimeter': 1e-12,
        'Gram/cubic centimeter-Gram/cubic millimeter': 1e-9,
        'Gram/cubic centimeter-Gram/cubic meter': 1e-6,
        'Gram/cubic centimeter-Kilogram/cubic millimeter': 1e9,
        'Gram/cubic centimeter-Tonne/cubic meter': 1e-9,
        'Gram/cubic centimeter-Tonne/cubic centimeter': 1e-15,
        'Gram/cubic centimeter-Tonne/cubic millimeter': 1e-18,

        'Kilogram/cubic millimeter-Kilogram/cubic meter': 1e-12,
        'Kilogram/cubic millimeter-Kilogram/cubic centimeter': 1e-18,
        'Kilogram/cubic millimeter-Gram/cubic millimeter': 1e-6,
        'Kilogram/cubic millimeter-Gram/cubic meter': 1e-9,
        'Kilogram/cubic millimeter-Gram/cubic centimeter': 1e-6,
        'Kilogram/cubic millimeter-Tonne/cubic meter': 1e-15,
        'Kilogram/cubic millimeter-Tonne/cubic centimeter': 1e-18,
        'Kilogram/cubic millimeter-Tonne/cubic millimeter': 1e-21,

        'Tonne/cubic meter-Kilogram/cubic meter': 1e3,
        'Tonne/cubic meter-Kilogram/cubic centimeter': 1e9,
        'Tonne/cubic meter-Gram/cubic millimeter': 1e12,
        'Tonne/cubic meter-Gram/cubic meter': 1e15,
        'Tonne/cubic meter-Gram/cubic centimeter': 1e12,
        'Tonne/cubic meter-Kilogram/cubic millimeter': 1e15,
        'Tonne/cubic meter-Tonne/cubic centimeter': 1e6,
        'Tonne/cubic meter-Tonne/cubic millimeter': 1e9,

        'Tonne/cubic centimeter-Kilogram/cubic meter': 1e6,
        'Tonne/cubic centimeter-Kilogram/cubic centimeter': 1e12,
        'Tonne/cubic centimeter-Gram/cubic millimeter': 1e9,
        'Tonne/cubic centimeter-Gram/cubic meter': 1e12,
        'Tonne/cubic centimeter-Gram/cubic centimeter': 1e15,
        'Tonne/cubic centimeter-Kilogram/cubic millimeter': 1e18,
        'Tonne/cubic centimeter-Tonne/cubic meter': 1e-6,
        'Tonne/cubic centimeter-Tonne/cubic millimeter': 1e3,

        'Tonne/cubic millimeter-Kilogram/cubic meter': 1e12,
        'Tonne/cubic millimeter-Kilogram/cubic centimeter': 1e18,
        'Tonne/cubic millimeter-Gram/cubic millimeter': 1e6,
        'Tonne/cubic millimeter-Gram/cubic meter': 1e9,
        'Tonne/cubic millimeter-Gram/cubic centimeter': 1e6,
        'Tonne/cubic millimeter-Kilogram/cubic millimeter': 1e21,
        'Tonne/cubic millimeter-Tonne/cubic meter': 1e-9,
        'Tonne/cubic millimeter-Tonne/cubic centimeter': 1e-3,

        //viscosity
        'Pascal Second-Millipascal Second': 1e3,
        'Pascal Second-Micropascal Second': 1e6,
        'Pascal Second-Poise': 1,
        'Pascal Second-Centipoise': 1e2,
        'Pascal Second-Millipoise': 1e3,
        'Pascal Second-Gram/meter second': 1,
        'Pascal Second-Kilogram/meter second': 1e-3,

        'Millipascal Second-Pascal Second': 1e-3,
        'Millipascal Second-Micropascal Second': 1e3,
        'Millipascal Second-Poise': 1e-3,
        'Millipascal Second-Centipoise': 1e-1,
        'Millipascal Second-Millipoise': 1,
        'Millipascal Second-Gram/meter second': 1e-3,
        'Millipascal Second-Kilogram/meter second': 1e-6,

        'Micropascal Second-Pascal Second': 1e-6,
        'Micropascal Second-Millipascal Second': 1e-3,
        'Micropascal Second-Poise': 1e-6,
        'Micropascal Second-Centipoise': 1e-4,
        'Micropascal Second-Millipoise': 1e-3,
        'Micropascal Second-Gram/meter second': 1e-6,
        'Micropascal Second-Kilogram/meter second': 1e-9,

        'Poise-Pascal Second': 1,
        'Poise-Millipascal Second': 1e3,
        'Poise-Micropascal Second': 1e6,
        'Poise-Centipoise': 100,
        'Poise-Millipoise': 1e3,
        'Poise-Gram/meter second': 1,
        'Poise-Kilogram/meter second': 1e-3,

        'Centipoise-Pascal Second': 1e-2,
        'Centipoise-Millipascal Second': 1e1,
        'Centipoise-Micropascal Second': 1e4,
        'Centipoise-Poise': 1e-2,
        'Centipoise-Millipoise': 1e1,
        'Centipoise-Gram/meter second': 1e-2,
        'Centipoise-Kilogram/meter second': 1e-5,

        'Millipoise-Pascal Second': 1e-3,
        'Millipoise-Millipascal Second': 1,
        'Millipoise-Micropascal Second': 1e3,
        'Millipoise-Poise': 1e-3,
        'Millipoise-Centipoise': 1e-1,
        'Millipoise-Gram/meter second': 1e-3,
        'Millipoise-Kilogram/meter second': 1e-6,

        'Gram/meter second-Pascal Second': 1,
        'Gram/meter second-Millipascal Second': 1e3,
        'Gram/meter second-Micropascal Second': 1e6,
        'Gram/meter second-Poise': 1,
        'Gram/meter second-Centipoise': 1e2,
        'Gram/meter second-Millipoise': 1e3,
        'Gram/meter second-Kilogram/meter second': 1e-3,

        'Kilogram/meter second-Pascal Second': 1e3,
        'Kilogram/meter second-Millipascal Second': 1e6,
        'Kilogram/meter second-Micropascal Second': 1e9,
        'Kilogram/meter second-Poise': 1e3,
        'Kilogram/meter second-Centipoise': 1e5,
        'Kilogram/meter second-Millipoise': 1e6,
        'Kilogram/meter second-Gram/meter second': 1e3,

        //current
        'Ampere-Milliampere': 1e3,
        'Ampere-Kiloampere': 1e-3,
        'Ampere-Megaampere': 1e-6,

        'Milliampere-Ampere': 1e-3,
        'Milliampere-Kiloampere': 1e-6,
        'Milliampere-Megaampere': 1e-9,

        'Kiloampere-Ampere': 1e3,
        'Kiloampere-Milliampere': 1e6,
        'Kiloampere-Megaampere': 1e-3,

        'Megaampere-Ampere': 1e6,
        'Megaampere-Milliampere': 1e9,
        'Megaampere-Kiloampere': 1e3,

        //flow
        'Liters/hour-Liters/minute': 1 / 60,
        'Liters/hour-Liters/second': 1 / 3600,
        'Liters/hour-Milliliters/hour': 1e3,
        'Liters/hour-Milliliters/minute': 1e3 / 60,
        'Liters/hour-Milliliters/second': 1e3 / 3600,
        'Liters/hour-Gallon/hour (US)': 0.264172,
        'Liters/hour-Gallon/minute (US)': 0.00440287,
        'Liters/hour-Gallon/second (US)': 7.33811e-5,
        'Liters/hour-Gallon/hour (Imperial)': 0.219969,
        'Liters/hour-Gallon/minute (Imperial)': 0.00366615,
        'Liters/hour-Gallon/second (Imperial)': 6.11025e-5,

        'Liters/minute-Liters/hour': 60,
        'Liters/minute-Liters/second': 1 / 60,
        'Liters/minute-Milliliters/hour': 60e3,
        'Liters/minute-Milliliters/minute': 1e3,
        'Liters/minute-Milliliters/second': 1e3 / 60,
        'Liters/minute-Gallon/hour (US)': 15.8503,
        'Liters/minute-Gallon/minute (US)': 0.264172,
        'Liters/minute-Gallon/second (US)': 0.00440287,
        'Liters/minute-Gallon/hour (Imperial)': 13.1988,
        'Liters/minute-Gallon/minute (Imperial)': 0.219969,
        'Liters/minute-Gallon/second (Imperial)': 0.00366615,

        'Liters/second-Liters/hour': 3600,
        'Liters/second-Liters/minute': 60,
        'Liters/second-Milliliters/hour': 3600e3,
        'Liters/second-Milliliters/minute': 60e3,
        'Liters/second-Milliliters/second': 1e3,
        'Liters/second-Gallon/hour (US)': 951.285,
        'Liters/second-Gallon/minute (US)': 15.8503,
        'Liters/second-Gallon/second (US)': 0.264172,
        'Liters/second-Gallon/hour (Imperial)': 791.928,
        'Liters/second-Gallon/minute (Imperial)': 13.1988,
        'Liters/second-Gallon/second (Imperial)': 0.219969,

        'Milliliters/hour-Liters/hour': 1e-3,
        'Milliliters/hour-Liters/minute': 1e-5,
        'Milliliters/hour-Liters/second': 1e-6,
        'Milliliters/hour-Milliliters/minute': 1 / 60,
        'Milliliters/hour-Milliliters/second': 1 / 3600,
        'Milliliters/hour-Gallon/hour (US)': 2.64172e-4,
        'Milliliters/hour-Gallon/minute (US)': 4.40287e-6,
        'Milliliters/hour-Gallon/second (US)': 7.33811e-8,
        'Milliliters/hour-Gallon/hour (Imperial)': 2.19969e-4,
        'Milliliters/hour-Gallon/minute (Imperial)': 3.66615e-6,
        'Milliliters/hour-Gallon/second (Imperial)': 6.11025e-8,

        'Milliliters/minute-Liters/hour': 1 / 60,
        'Milliliters/minute-Liters/minute': 1e-3,
        'Milliliters/minute-Liters/second': 1e-6,
        'Milliliters/minute-Milliliters/hour': 60,
        'Milliliters/minute-Milliliters/second': 1 / 60,
        'Milliliters/minute-Gallon/hour (US)': 0.264172 / 60,
        'Milliliters/minute-Gallon/minute (US)': 0.00440287 / 60,
        'Milliliters/minute-Gallon/second (US)': 7.33811e-5 / 60,
        'Milliliters/minute-Gallon/hour (Imperial)': 0.219969 / 60,
        'Milliliters/minute-Gallon/minute (Imperial)': 0.00366615 / 60,
        'Milliliters/minute-Gallon/second (Imperial)': 6.11025e-5 / 60,

        'Milliliters/second-Liters/hour': 1 / 3600,
        'Milliliters/second-Liters/minute': 1 / 60,
        'Milliliters/second-Liters/second': 1e-3,
        'Milliliters/second-Milliliters/hour': 3600,
        'Milliliters/second-Milliliters/minute': 60,
        'Milliliters/second-Milliliters/second': 1,
        'Milliliters/second-Gallon/hour (US)': 0.264172 / 3600,
        'Milliliters/second-Gallon/minute (US)': 0.00440287 / 3600,
        'Milliliters/second-Gallon/second (US)': 7.33811e-5 / 3600,
        'Milliliters/second-Gallon/hour (Imperial)': 0.219969 / 3600,
        'Milliliters/second-Gallon/minute (Imperial)': 0.00366615 / 3600,
        'Milliliters/second-Gallon/second (Imperial)': 6.11025e-5 / 3600,

        'Gallon/hour (US)-Liters/hour': 3.78541 * 60,
        'Gallon/hour (US)-Liters/minute': 3.78541,
        'Gallon/hour (US)-Liters/second': 3.78541 / 60,
        'Gallon/hour (US)-Milliliters/hour': 3.78541 * 60 * 1000,
        'Gallon/hour (US)-Milliliters/minute': 3.78541 * 1000,
        'Gallon/hour (US)-Milliliters/second': 3.78541 * 1000 / 60,
        'Gallon/hour (US)-Gallon/minute (US)': 1 / 60,
        'Gallon/hour (US)-Gallon/second (US)': 1 / 3600,
        'Gallon/hour (US)-Gallon/hour (Imperial)': 1 / 1.20095,
        'Gallon/hour (US)-Gallon/minute (Imperial)': 1 / 1.20095 / 60,
        'Gallon/hour (US)-Gallon/second (Imperial)': 1 / 1.20095 / 3600,

        'Gallon/minute (US)-Liters/hour': 3.78541 * 60,
        'Gallon/minute (US)-Liters/minute': 3.78541,
        'Gallon/minute (US)-Liters/second': 3.78541 / 60,
        'Gallon/minute (US)-Milliliters/hour': 3.78541 * 60 * 1000,
        'Gallon/minute (US)-Milliliters/minute': 3.78541 * 1000,
        'Gallon/minute (US)-Milliliters/second': 3.78541 * 1000 / 60,
        'Gallon/minute (US)-Gallon/hour (US)': 1,
        'Gallon/minute (US)-Gallon/second (US)': 1 / 60,
        'Gallon/minute (US)-Gallon/hour (Imperial)': 1 / 1.20095,
        'Gallon/minute (US)-Gallon/minute (Imperial)': 1 / 1.20095 / 60,
        'Gallon/minute (US)-Gallon/second (Imperial)': 1 / 1.20095 / 3600,

        'Gallon/second (US)-Liters/hour': 3.78541 * 3600,
        'Gallon/second (US)-Liters/minute': 3.78541 * 60,
        'Gallon/second (US)-Liters/second': 3.78541,
        'Gallon/second (US)-Milliliters/hour': 3.78541 * 3600 * 1000,
        'Gallon/second (US)-Milliliters/minute': 3.78541 * 60 * 1000,
        'Gallon/second (US)-Milliliters/second': 3.78541 * 1000,
        'Gallon/second (US)-Gallon/hour (US)': 60,
        'Gallon/second (US)-Gallon/minute (US)': 1,
        'Gallon/second (US)-Gallon/hour (Imperial)': 60 / 1.20095,
        'Gallon/second (US)-Gallon/minute (Imperial)': 1 / 1.20095,
        'Gallon/second (US)-Gallon/second (Imperial)': 1 / 1.20095 / 60,

        'Gallon/hour (Imperial)-Liters/hour': 4.54609 * 60,
        'Gallon/hour (Imperial)-Liters/minute': 4.54609,
        'Gallon/hour (Imperial)-Liters/second': 4.54609 / 60,
        'Gallon/hour (Imperial)-Milliliters/hour': 4.54609 * 60 * 1000,
        'Gallon/hour (Imperial)-Milliliters/minute': 4.54609 * 1000,
        'Gallon/hour (Imperial)-Milliliters/second': 4.54609 * 1000 / 60,
        'Gallon/hour (Imperial)-Gallon/hour (US)': 1.20095,
        'Gallon/hour (Imperial)-Gallon/minute (US)': 1.20095 / 60,
        'Gallon/hour (Imperial)-Gallon/second (US)': 1.20095 / 3600,
        'Gallon/hour (Imperial)-Gallon/minute (Imperial)': 1 / 60,
        'Gallon/hour (Imperial)-Gallon/second (Imperial)': 1 / 3600,

        'Gallon/minute (Imperial)-Liters/hour': 4.54609 * 60 * 60,
        'Gallon/minute (Imperial)-Liters/minute': 4.54609 * 60,
        'Gallon/minute (Imperial)-Liters/second': 4.54609,
        'Gallon/minute (Imperial)-Milliliters/hour': 4.54609 * 60 * 60 * 1000,
        'Gallon/minute (Imperial)-Milliliters/minute': 4.54609 * 60 * 1000,
        'Gallon/minute (Imperial)-Milliliters/second': 4.54609 * 1000,
        'Gallon/minute (Imperial)-Gallon/hour (US)': 1.20095 * 60,
        'Gallon/minute (Imperial)-Gallon/minute (US)': 1.20095,
        'Gallon/minute (Imperial)-Gallon/second (US)': 1.20095 / 60,
        'Gallon/minute (Imperial)-Gallon/hour (Imperial)': 1,
        'Gallon/minute (Imperial)-Gallon/second (Imperial)': 1 / 60,

        'Gallon/second (Imperial)-Liters/hour': 4.54609 * 60 * 60 * 60,
        'Gallon/second (Imperial)-Liters/minute': 4.54609 * 60 * 60,
        'Gallon/second (Imperial)-Liters/second': 4.54609 * 60,
        'Gallon/second (Imperial)-Milliliters/hour': 4.54609 * 60 * 60 * 1000,
        'Gallon/second (Imperial)-Milliliters/minute': 4.54609 * 60 * 1000,
        'Gallon/second (Imperial)-Milliliters/second': 4.54609 * 1000,
        'Gallon/second (Imperial)-Gallon/hour (US)': 1.20095 * 60 * 60,
        'Gallon/second (Imperial)-Gallon/minute (US)': 1.20095 * 60,
        'Gallon/second (Imperial)-Gallon/second (US)': 1.20095,
        'Gallon/second (Imperial)-Gallon/hour (Imperial)': 60,
        'Gallon/second (Imperial)-Gallon/minute (Imperial)': 1,




        // Add more conversion factors as needed
      };
      String conversionKey = '$fromUnit-$toUnit';


      print("===== from == > $fromUnit to ==> $toUnit === conversionKey $conversionKey");

      // Check if direct conversion factor exists
      if (conversionFactors.containsKey(conversionKey)) {
        print("kiijijiojii");

        return conversionFactors[conversionKey]!;
      }

      // Check if inverse conversion factor exists
      String inverseKey = '$toUnit-$fromUnit';
      if (conversionFactors.containsKey(inverseKey)) {


        print(";;;;;;;;;;;;;;;;;;");
        return 1 / conversionFactors[inverseKey]!;
      }

      // Return 1.0 for units that are the same (no conversion needed)
      return 1.0;
    }

  // }
}
