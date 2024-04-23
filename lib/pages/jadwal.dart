import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplants/widgets/stack_w.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class JadwalPage extends StatefulWidget {
  const JadwalPage({super.key,});

  @override
  State<JadwalPage> createState() => _JadwalPage();
}
class _JadwalPage extends State<JadwalPage> {
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Stack(
          children: [
            Image.asset('assets/image/tanamanBg.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Color.fromARGB(127, 173, 189, 14),
              colorBlendMode: BlendMode.srcOver,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,),
          SafeArea(
            child:Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20,),
                    child: Text('Jadwal Penyiraman',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w800,),
                    ),
                  ),
                  JstackW(),
                  Container(
                    width: MediaQuery.of(context).size.width - 120,
                    height: 100,
                    margin: const EdgeInsets.only(top: 50),
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
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 240,
                        height: 70,
                        margin: const EdgeInsets.only(left: 40, top: 41, bottom: 40),
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
                        width: MediaQuery.of(context).size.width - 240,
                        height: 70,
                        margin: const EdgeInsets.only(left: 40, top: 41, bottom: 40),
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
                        onPressed: (){
                          _aturjadwal(context);
                        },
                        foregroundColor: Theme.of(context).primaryColor,
                        backgroundColor: Theme.of(context).cardColor,
                        icon : const Icon (Icons.add,size: 36,), label: const Text("Atur"),
                      )
                  )
                ]
              ),
            )
          ],
        ),
    );
  }
  Future _aturjadwal(BuildContext context){
    return showModalBottomSheet(
      context: context,
      backgroundColor: Color.fromARGB(255, 173, 189, 14),
      barrierColor: Colors.black87.withOpacity(0.5),
      isDismissible: false,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(0.5))),
      builder: (context) => Container(
        height: 500,
        child: Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Column(
                  children: [
                    Text('Atur Kelembapan'),
                    slider,
                  ],
                )
              )
            ],
          ),
        ),
      )
    );
  }
  Widget slider = SleekCircularSlider(
    appearance: CircularSliderAppearance(),
    initialValue: 0,
    onChange: (double value){
      print(value);
    },
  );
}
