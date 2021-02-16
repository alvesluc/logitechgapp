import 'package:flutter/material.dart';

class HorizontalProduct extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFFF5F5F5), Color(0xFF7A7B7C)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 180.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      width: MediaQuery.of(context).size.width * .66,
      decoration: BoxDecoration(
        color: Color(0xFF333333),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Color(0x66333333),
            blurRadius: 4.0,
            offset: Offset(
              0,
              3,
            ),
          ),
        ],
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xFF2E2E2E),
              Color(0xFF4D4D4D),
              Color(0xFF7A7B7C),
            ],
            stops: [
              0.1,
              0.9,
              1,
              // 0.7,
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'G PRO \nWIRELESS',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              foreground: Paint()..shader = linearGradient,
            ),
          ),
          Image.asset('assets/images/g_pro_wireless.png'),
          Text(
            'Price',
            style: TextStyle(
              color: Color(0xFF00B8FC),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          RichText(
            text: TextSpan(
              text: '\$ ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '149.99',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -1,
                      foreground: Paint()..shader = linearGradient),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
