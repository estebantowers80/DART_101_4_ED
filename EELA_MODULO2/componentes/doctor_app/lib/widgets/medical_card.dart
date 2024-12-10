import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MedicalCard extends StatelessWidget {
  const MedicalCard({
    super.key,
    required this.srcIcon,
    required this.title,
    required this.colorBackground,
    required this.colorTextIcon,
    required this.onTap,
  });

  final String srcIcon;
  final String title;
  final Color colorBackground;
  final Color colorTextIcon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Stack(
        children: [
          Container(
            //contenedor principal
            decoration: BoxDecoration(
              color: colorBackground,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          //solo por diseño para darle color en la esquina
          Positioned(
            left: 1,
            child: Container(
              // secundaro para hacer el degradado de color en la esquina
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.4),
                    blurRadius: 25,
                  ),
                ],
                shape: BoxShape.circle,
              ),
              height: 50,
              width: 50,
            ),
          ),

          Positioned.fill(
            //hacemos que ocupe todo el espacio se centra
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: colorTextIcon,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 51,
                  height: 51,
                  child: Center(
                    child: SvgPicture.asset(
                      srcIcon,
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  title,
                  style: TextStyle(
                    color: colorTextIcon,
                    fontWeight: FontWeight.w500, //SEMIBOLT O SEMI NEGRITA
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
