import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplants/widgets/stack_w.dart';
import 'package:smartplants/pages/atur_jadwal.dart';

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
      backgroundColor:
      const Color.fromARGB(255, 202, 211, 113),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
        child: AppBar(
          title: Text('Jadwal Penyiraman',
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
      body : SafeArea(
          child: Center(
            child:Column(
              children: [
                const JstackW(),
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
                      margin: EdgeInsets.only(left: 40, top: 41, bottom: 40),
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
                    ))

              ],
            ),
          )
      )

    )
    ;
  }
}