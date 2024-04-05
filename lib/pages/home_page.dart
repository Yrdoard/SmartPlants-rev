import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplants/widgets/stack_w.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:go_router/go_router.dart';


class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePageState();
}
double tes = 20 ;
class _HomePageState extends State<HomePages> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 202, 211, 113),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(
            title: Text('Beranda',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,),
              ),
            ),

            backgroundColor: Colors.transparent,
            centerTitle: true,
          ),
        ),
        body: SafeArea(
          child:Center(
            child: Column(
              children: [
                const BstackW(),
                Container(
                  width: MediaQuery.of(context).size.width - 120,
                  height: 160,
                  margin: const EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(0,3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    children: [
                      Text('Waktu Penyiraman',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 0, 111, 18),
                            fontSize: 11,
                            fontWeight: FontWeight.w500,),
                        ),
                      ),
                      SizedBox(
                          height: 139,
                          width: double.infinity,
                          child: SfRadialGauge(
                              axes: <RadialAxis>[RadialAxis(
                                showTicks: false,
                                  pointers: <GaugePointer>[
                                    RangePointer(
                                      value: tes,
                                      width: 0.2,
                                      sizeUnit: GaugeSizeUnit.factor,
                                      gradient: const SweepGradient(
                                        colors: <Color>[
                                          Color.fromARGB(180, 119, 53, 18),
                                          Color.fromARGB(255, 119, 53, 18)
                                        ],
                                        stops: <double>[0.25, 0.75]),)
                                  ],
                                  showLabels: false,
                                  startAngle: 170,
                                  endAngle: 10,
                                  canScaleToFit: true,
                                  annotations: <GaugeAnnotation>[
                                    GaugeAnnotation(
                                        axisValue: 50,
                                        positionFactor: 0.2,
                                        widget: Text(
                                          tes.round().toString() + ("%"),
                                          style:
                                          const TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,),))
                                  ],
                                  axisLineStyle: const AxisLineStyle(
                                      thickness: 0.2,
                                      thicknessUnit: GaugeSizeUnit.factor,
                                      color: Color.fromARGB(255, 254, 225, 225)
                                  )
                                ),
                              ]
                          )
                      ),

                    ],

                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 240,
                      height: 80,
                      margin: const EdgeInsets.only(left: 40, top: 55, bottom: 40),
                      decoration: BoxDecoration(
                          color:
                          Theme.of(context).primaryColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(0,3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 220,
                      height: 80,
                      margin: EdgeInsets.only(left: 20, top: 55, bottom: 40),
                      decoration: BoxDecoration(
                          color:
                          Theme.of(context).primaryColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(0,3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15)
                      ),
                    )
                  ],
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width - 80,
                    height: 60,
                    child: FloatingActionButton.extended(
                      tooltip: ('AturJadwal'),
                      onPressed: () => context.go('/AJadwal'
                      ),
                      foregroundColor: Theme.of(context).primaryColor,
                      backgroundColor: Theme.of(context).cardColor,
                      icon : Icon (Icons.add,size: 36,), label: Text("Atur"),
                    )
                ),
              ],
            ),

          ),
        )
    )
    ;
  }
  }
