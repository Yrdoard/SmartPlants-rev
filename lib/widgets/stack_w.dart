import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class stackw extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 110 ),
          width: 120,
          height: 60,
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
            ),
    //     Positioned(
    //       top: -50,
    //       child: SizedBox(
    //         width: 180,
    //         height: 240,
    //         child: Image.asset(
    //           "assets/image/tanamanJ.png",),
    //       ),
    //     ),
    //
    //
    // Positioned(
    //   top: 100,
    //   left: 35,
    //     child:  SizedBox(
    //       width: 100,
    //       height: 100,
    //       child: Image.asset(
    //         "assets/image/Ellipse2.png",),
    //     )
    // )



      ]
    );
  }
}
