import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class NumberPage extends StatefulWidget {
  const NumberPage({super.key});

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage>{
  TimeOfDay selectedTime = TimeOfDay.now();
  double slider = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Color.fromARGB(127, 173, 189, 14)
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50,),
                    child: Text('Atur Jadwal',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w800,),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width - 120,
                    margin: EdgeInsets.only(top: 75),
                    padding: EdgeInsets.all(10),
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
                        Text("${selectedTime.hour}:${selectedTime.minute}",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w800,),
                          ),
                        ),
                        SizedBox(
                          height: 21,
                            child: ElevatedButton(
                              child: Text('Atur Waktu',
                                style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                color: Color.fromARGB(255, 0, 111, 18),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,),
                                ),
                              ),
                              onPressed: () async {
                                final TimeOfDay? timeOfDay = await showTimePicker(
                                  context: context,
                                  initialTime: selectedTime,
                                  initialEntryMode: TimePickerEntryMode.dial,
                                );
                                if (timeOfDay != null) {
                                  setState(() {
                                    selectedTime = timeOfDay;
                                  });
                                }
                              },
                            )
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 115,
                    width: MediaQuery.of(context).size.width - 80,
                    margin: EdgeInsets.only(top: 60),
                    padding: EdgeInsets.all(10),
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
                        Text('Atur Kelembapan',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 0, 111, 18),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,),
                          ),
                        ),
                        Text(slider.round().toString() + ("%"),
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 0, 111, 18),
                              fontSize: 15,
                              fontWeight: FontWeight.w800,),
                          ),
                        ),
                        SliderTheme(
                          data:SliderThemeData(
                            inactiveTrackColor: Color.fromARGB(90,122, 122, 122)
                          ),
                          child: Slider(
                            value: slider,
                            max: 100,
                            divisions: 100,
                            label: slider.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                slider = value;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}