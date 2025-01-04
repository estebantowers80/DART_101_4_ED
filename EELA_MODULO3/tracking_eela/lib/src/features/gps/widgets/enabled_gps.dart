import 'package:flutter/material.dart';

class EnabledGps extends StatelessWidget {
  const EnabledGps({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,   //una forma de alinear
        mainAxisSize: MainAxisSize.min, // esta forma es mejor
        children: [
          Icon(
            Icons.gps_off,
            size: 70,
            //color: Color(0xFFe8a50b),
          ),
          SizedBox(width: 20),
          Text(
            'Debes activar el GPS',
            style: TextStyle(
              fontSize: 24.00,
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
