import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:smartplants/widgets/Bottom_nav_item.dart';


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
      backgroundColor: const Color.fromARGB(255, 245, 255, 180),
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          beranda(),
          tanaman(),
        ],
      ),
    )

    
    ;
  }
  Widget beranda() => Container(
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
        );

  Widget tanaman() => Stack(
    children: <Widget>[
      Positioned(
        top: 280,
        left: 117.5,
        height: 60,
        width: 120,
        child: Container(
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
      ),
      Positioned(
          top: -25,
          left: 57,
          width: 256,
          height: 472,
          child: Image.asset(
              "assets/image/tanamanJ.png",)

      ),
      Positioned(
          top: 85,
          left: 50,
          width: 256,
          height: 472,
          child: Image.asset(
            "assets/image/Ellipse2.png")
      )
    ],
  );
  }
