import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:unit_conversion/screens/area.dart';
import 'package:unit_conversion/screens/length.dart';
import 'package:unit_conversion/services/ad_Provider.dart';
import 'package:unit_conversion/utils/app_constant.dart';
import 'package:unit_conversion/widgets/cusomCard.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // AdProvider adProvider = Provider.of<AdProvider>(context, listen: false);
    // adProvider.initializeHomeScreenBanner();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        title: const Text('Unit Conversion',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              TextField(
                // controller: _searchController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    hintText: 'Search for Units and Categories',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {},
                    ),
                    prefixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: (){

                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text('Daily Life',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                        child:
                        true? CustomCard(img: 'assets/images/length.png', title: "Length",):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/length.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Length",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),

                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Length', unitList1: units, shortUnitList1: units2, unitList2: units3, shortUnitList2: units4,)),
                          );
                        },
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/area.png', title: "Area",):
                         Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/area.png',
                                                //         width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Area",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                         ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Area', unitList1: unitsArea, shortUnitList1: unitsArea1, unitList2: unitsArea2, shortUnitList2: unitsArea4)),
                          );
                        },
                      )),
                  SizedBox(width: 10,),
                  Expanded(
                      child: InkWell(
                        child:true? CustomCard(img: 'assets/images/mass.png', title: 'Mass'):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/mass.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Mass",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Mass', unitList1: unitsMass, shortUnitList1: unitsMass2, unitList2: unitsMass3, shortUnitList2: unitsMass4)),
                          );
                        },
                      ))
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/temperature.png', title: "Temperature"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/temperature.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Temperature",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),

                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Temperature', unitList1: unitsTemperature, shortUnitList1: unitsTemperature2, unitList2: unitsTemperature3, shortUnitList2: unitsTemperature4)),
                          );
                        },
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/speed.png', title: "Speed"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/speed.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Speed",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Speed', unitList1: unitsSpeed, shortUnitList1: unitsSpeed2, unitList2: unitsSpeed3, shortUnitList2: unitsSpeed4)),
                          );
                        },
                      )),
                  SizedBox(width: 10,),
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/volume.png', title: "Volume"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/volume.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Volume",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Volume', unitList1: unitsVolume, shortUnitList1: unitsVolume2, unitList2: unitsVolume3, shortUnitList2: unitsVolume4)),
                          );
                        },
                      ))
                ],
              ),
              SizedBox(height: 20,),
              Text('Life',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/currency.png', title: "Currency"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/currency.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Currency",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),

                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Currency', unitList1: units, shortUnitList1: units2, unitList2: units3, shortUnitList2: units4)),
                          );
                        },
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/cooking.png', title: "Cooking"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/cooking.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Cooking",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Cooking', unitList1: unitsCooking, shortUnitList1: unitsCooking2, unitList2: unitsCooking3, shortUnitList2: unitsCooking4)),
                          );
                        },
                      )),
                  SizedBox(width: 10,),
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/time.png', title: "Time"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/time.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Time",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Time', unitList1: unitsTime, shortUnitList1: unitsTime2, unitList2: unitsTime3, shortUnitList2: unitsTime4)),
                          );
                        },
                      ))
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/fuel.png' , title: "Fuel"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/fuel.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Fuel",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),

                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Fuel', unitList1: unitsFuel, shortUnitList1: unitsFuel2, unitList2: unitsFuel3, shortUnitList2: unitsFuel4)),
                          );
                        },
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/storage.png', title: "Storage"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/storage.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Storage",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Storage', unitList1: unitsStorage, shortUnitList1: unitsStorage2, unitList2: unitsStorage3, shortUnitList2: unitsStorage4)),
                          );
                        },
                      )),
                  SizedBox(width: 10,),
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/data_transfer.png', title: "Data Transfer"):
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/data_transfer.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Data Transfer",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Data Transfer', unitList1: unitsDataTransfer, shortUnitList1: unitsDataTransfer2, unitList2: unitsDataTransfer3, shortUnitList2: unitsDataTransfer4)),
                          );
                        },
                      ))
                ],
              ),
        SizedBox(height: 20,),
              Text('Science',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/acceleration.png', title: "Acceleration"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/acceleration.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Acceleration",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),

                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Acceleration', unitList1: unitsAcceleration, shortUnitList1: unitsAcceleration2, unitList2: unitsAcceleration3, shortUnitList2: unitsAcceleration4)),
                          );
                        },
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/angle.png', title: "Angle"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/angle.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Angle",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Angle', unitList1: unitsAngle, shortUnitList1: unitsAngle2, unitList2: unitsAngle3, shortUnitList2: unitsAngle4)),
                          );
                        },
                      )),
                  SizedBox(width: 10,),
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/energy1.png', title: "Energy"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/energy1.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Energy",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Energy', unitList1: unitsEnergy, shortUnitList1: unitsEnergy2, unitList2: unitsEnergy3, shortUnitList2: unitsEnergy4)),
                          );
                        },
                      ))
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/frequency.png', title: "Frequency"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/frequency.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Frequency",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),

                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Frequency', unitList1: unitsFrequency, shortUnitList1: unitsFrequency2, unitList2: unitsFrequency3, shortUnitList2: unitsFrequency4)),
                          );
                        },
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/energy.png', title: "Power"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/energy.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Power",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Power', unitList1: unitsPower, shortUnitList1: unitsPower2, unitList2: unitsPower3, shortUnitList2: unitsPower4)),
                          );
                        },
                      )),
                  SizedBox(width: 10,),
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/pressure.png', title: "Pressure"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/pressure.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Pressure",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Pressure', unitList1: unitsPressure, shortUnitList1: unitsPressure2, unitList2: unitsPressure3, shortUnitList2: unitsPressure4)),
                          );
                        },
                      ))
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                        child: true?CustomCard(img: 'assets/images/force.png', title: "Force"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/force.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Force",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),

                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Force', unitList1: unitsForce, shortUnitList1: unitsForce2, unitList2: unitsForce3, shortUnitList2: unitsForce4)),
                          );
                        },
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/torque.png', title: "Torque"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/torque.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Torque",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Torque', unitList1: unitsTorque, shortUnitList1: unitsTorque2, unitList2: unitsTorque3, shortUnitList2: unitsTorque4)),
                          );
                        },
                      )),
                  SizedBox(width: 10,),
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img: 'assets/images/denisty.png', title: "Density"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/denisty.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Density",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Density', unitList1: unitsDensity, shortUnitList1: unitsDensity2, unitList2: unitsDensity3, shortUnitList2: unitsDensity4)),
                          );
                        },
                      ))
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                        child:true? CustomCard(img:  'assets/images/Viscosity.jpg', title: "Viscosity"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/Viscosity.jpg',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Viscosity",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),

                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Viscosity', unitList1: unitsViscosity, shortUnitList1: unitsViscosity2, unitList2: unitsViscosity3, shortUnitList2: unitsViscosity4)),
                          );
                        },
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: InkWell(
                        child: true? CustomCard(img:  'assets/images/current.png', title: 'Current'):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/current.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Current",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Current', unitList1: unitsCurrent, shortUnitList1: unitsCurrent2, unitList2: unitsCurrent3, shortUnitList2: unitsCurrent4)),
                          );
                        },
                      )),
                  SizedBox(width: 10,),
                  Expanded(
                      child: InkWell(
                        child:true? CustomCard(img:  'assets/images/flow.png', title: "Flow"):
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 100,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/flow.png',
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8,),
                              Text("Flow",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  LengthScreen(title: 'Flow', unitList1: unitsFlow, shortUnitList1: unitsFlow2, unitList2: unitsFlow3, shortUnitList2: unitsFlow4)),
                          );
                        },
                      ))
                ],
              ),

        // AdmobBanner(adUnitId: "ca-app-pub-3945259714635966/1771433971", adSize: AdmobBannerSize.BANNER)
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Consumer<AdProvider>(
      //   builder:(context, adProvider, child){
      //     if(adProvider.isHomeScreenBannerLoaded){
      //       return Container(
      //         // height: adProvider.homeScreenBanner.size.height.toString(),
      //         child: AdWidget(ad: adProvider.homeScreenBanner,),
      //       );
      //     }
      //     else{
      //       return Container(height: 0,);
      //     }
      //   }
      // ),
    );
  }
}
