import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplants/widgets/stack_w.dart';

class JadwalPage extends StatefulWidget {
  const JadwalPage({super.key,});

  @override
  State<JadwalPage> createState() => _JadwalPage();
}
class _JadwalPage extends State<JadwalPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 255, 180),
      body: Column(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 25),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),

            child: Center(
                child: Text("Beranda",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 0, 111, 18),
                      fontSize: 25,
                      fontWeight: FontWeight.w800,),
                  ),
                )
            ),
          ),
          Stack(
              children: [
                Positioned(
                  top: -50,
                  child: SizedBox(
                    width: 180,
                    height: 240,
                    child: Image.asset(
                      "assets/image/tanamanJ.png",),
                  ),
                ),


                Positioned(
                    top: 100,
                    left: 35,
                    child:  SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        "assets/image/Ellipse2.png",),
                    )
                )
              ],
            ),
          Container(
            width: 240,
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 50),
            decoration: BoxDecoration(
                color: Theme
                    .of(context)
                    .cardColor,
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
//       body: Stack(
//         alignment: Alignment.topCenter,
//         children: <Widget>[
//           teks(),
//           gtanaman(),
//           waktu(),
//           twaktu(),
//         ],
//       ),
//     )
//
//
//     ;
//   }
//   Widget teks() => Container(
//     height: 60,
//     width: double.infinity,
//     margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
//     child: Center(
//         child: Text("Jadwal Penyiraman",
//           style: GoogleFonts.poppins(
//             textStyle: const TextStyle(
//               color: Color.fromARGB(255, 0, 111, 18),
//               fontSize: 25,
//               fontWeight: FontWeight.w800,),
//           ),
//         )
//     ),
//   );
//
//   Widget gtanaman() => Stack(
//     children: <Widget>[
//       Positioned(
//           top: 280,
//           left: 117.5,
//           height: 60,
//           width: 120,
//           child: Container(
//             decoration: BoxDecoration(
//                 color: Theme
//                     .of(context)
//                     .cardColor,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.3),
//                     spreadRadius: 1,
//                     blurRadius: 3,
//                     offset: const Offset(0,3),
//                   ),
//                 ],
//                 borderRadius: BorderRadius.circular(15)
//             ),
//           )
//       ),
//       Positioned(
//           top: -25,
//           left: 57,
//           width: 256,
//           height: 472,
//           child: Image.asset(
//             "assets/image/tanamanJ.png",)
//
//       ),
//       Positioned(
//           top: 85,
//           left: 50,
//           width: 256,
//           height: 472,
//           child: Image.asset(
//               "assets/image/Ellipse2.png")
//       )
//     ],
//   );
//   Widget waktu() => Positioned(
//       top: 401,
//       left: 57,
//       width: 240,
//       height: 80,
//       child: Container(
//         decoration: BoxDecoration(
//             color: Theme
//                 .of(context)
//                 .cardColor,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.3),
//                 spreadRadius: 1,
//                 blurRadius: 3,
//                 offset: const Offset(0,3),
//               ),
//             ],
//             borderRadius: BorderRadius.circular(15)
//         ),
//       )
//   );
//   Widget twaktu() => Positioned(
//     top: 405,
//     left: 125,
//     width: 240,
//     height: 80,
//     child: Text(
//       'Waktu Penyiraman',
//           style: GoogleFonts.poppins(
//         textStyle : const TextStyle(
//         fontSize: 11,
//           color: Color.fromARGB(255, 0, 111, 18),
//           fontWeight: FontWeight.w500,
//         )
//     ),
//     ),
    );
  }
}