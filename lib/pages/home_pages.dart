import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:smartplants/widgets/Bottom_nav_item.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
double tes = 20 ;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tanaman(),


//         body: Center(
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//
//                 children: [
//                   Container(
//                       height: 80,
//                       width: double.infinity,
//                       margin: const EdgeInsets.symmetric(
//                           horizontal: 0, vertical: 15),
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 10, vertical: 10),
//
//                       child: Center(
//                           child: Text("Beranda",
//                             style: GoogleFonts.poppins(
//                               textStyle: const TextStyle(
//                                 color: Color.fromARGB(255, 0, 111, 18),
//                                 fontSize: 30,
//                                 fontWeight: FontWeight.w800,),
//                             ),
//                           )
//                       )
//                   ),
//                   Container(
//                     height: 285,
//                     width: double.infinity,
//                     margin: const EdgeInsets.symmetric(
//                         horizontal: 10, vertical: 50),
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 10, vertical: 15),
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(20),
//                         boxShadow: const [
//                           BoxShadow(
//                             color: Color.fromARGB(255, 46, 160, 80),
//                             spreadRadius: 5,
//                           ),
//                         ]),
//                     child: Column(
//                       children: [
//                         Text("Kelembapan Tanah Saat ini :",
//                           style: GoogleFonts.poppins(
//                             color: Colors.black,
//                             fontSize: 19,
//                             fontWeight: FontWeight.w600,
//                           ),),
//                         Container(
//                             height: 200,
//                             width: double.infinity,
//                             margin: const EdgeInsets.symmetric(
//                                 horizontal: 0, vertical: 0),
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 0, vertical: 0),
//                             child: SfRadialGauge(
//                                 axes: <RadialAxis>[RadialAxis(
//                                     pointers: <GaugePointer>[RangePointer(
//                                       value: tes,
//                                       width: 0.1,
//                                       sizeUnit: GaugeSizeUnit.factor,
//                                       gradient: const SweepGradient(
//                                           colors: <Color>[
//                                             Color.fromRGBO(199, 150, 119, 1),
//                                             Color.fromRGBO(100, 50, 0, 1)
//                                           ],
//                                           stops: <double>[0.25, 0.75]),)
//                                     ],
//                                     showLabels: false,
//                                     startAngle: 170,
//                                     endAngle: 10,
//                                     canScaleToFit: true,
//                                     annotations: <GaugeAnnotation>[
//                                       GaugeAnnotation(axisValue: 50,
//                                           positionFactor: 0.2,
//                                           widget: Text(
//                                             tes.round().toString() + ("%"),
//                                             style:
//                                             const TextStyle(
//                                                 fontWeight: FontWeight.bold,
//                                                 fontSize: 60),))
//                                     ],
//                                     axisLineStyle: const AxisLineStyle(
//                                         thickness: 0.1,
//                                         thicknessUnit: GaugeSizeUnit.factor,
//                                         color: Color.fromARGB(
//                                             255, 211, 208, 208)
//
//                                     )),
//                                 ])
//                         )
//                       ],
//                     ),
//
//                   ),
//                   Container(
//                     height: 40,
//                     width: double.infinity,
//                     margin: const EdgeInsets.symmetric(
//                         horizontal: 50, vertical: 20),
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 0, vertical: 0),
//                     decoration: BoxDecoration(
//                         color: Theme
//                             .of(context)
//                             .cardColor,
//                         borderRadius: BorderRadius.circular(15),
//                         boxShadow: const [
//                           BoxShadow(
//                             color: Color.fromARGB(255, 46, 160, 80),
//                             spreadRadius: 5,
//                           ),
//                         ]),
//                     child: TextButton(
//                       style: TextButton.styleFrom(
//                           foregroundColor: Colors.blue,
//                           disabledForegroundColor: Colors.red.withOpacity(0.38)
//                       ),
//                       onPressed: () => context.go('/'),
//                       child: const Text('Go to the Details screen'),
//                     ),
//                   ),
//                   Container(
//                     height: 40,
//                     width: double.infinity,
//                     margin: const EdgeInsets.symmetric(
//                         horizontal: 50, vertical: 10),
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 5, vertical: 20),
//                     decoration: BoxDecoration(
//                         color: Theme
//                             .of(context)
//                             .cardColor,
//                         borderRadius: BorderRadius.circular(15),
//                         boxShadow: const[
//                           BoxShadow(
//                             color: Color.fromARGB(255, 46, 160, 80),
//                             spreadRadius: 5,
//                           ),
//                         ]),
//                   )
//
//                 ]
//
//             ),
//
//     ),
         );
  }
  Widget tanaman() =>
      Container(
        padding: EdgeInsets.all(10),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 30,
              left: 30,
              height: 150,
              width: 150,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
            Positioned(
                top: 70,
                left:60,
                width: 100,
                height: 100,
                child: Container(
                  width:50,
                  height:50,
                  color: Colors.red[400],
                )
            )
          ],
        ),
      );
}