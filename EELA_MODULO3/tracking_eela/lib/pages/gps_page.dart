import 'package:flutter/material.dart';

class GpsPage extends StatelessWidget {
  const GpsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //     appBar: AppBar(
    //       title: const Text('LOCALIZACION'),
    //     ),
    //     body: const Center(
    //       child: Column(
    //         //mainAxisAlignment: MainAxisAlignment.center,   //una forma de alinear
    //         mainAxisSize: MainAxisSize.min, // esta forma es mejor
    //         children: [
    //           Icon(
    //             Icons.gps_off,
    //             size: 70,
    //             color: Color(0xFFe8a50b),
    //           ),
    //           SizedBox(width: 20),
    //           Text(
    //             'Debes activar el GPS',
    //             style: TextStyle(
    //               fontSize: 24.00,
    //               color: Colors.blue,
    //               fontWeight: FontWeight.w500,
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   );

    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/icons/enable_gps.png')
        ],

      ),
    );

  }
}
