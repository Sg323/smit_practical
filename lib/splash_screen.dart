import 'package:flutter/material.dart';
import 'dart:ui' as ui;


class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          size: Size(58, 76),
          painter: RPSCustomPainter(),
        ),
      ),
    );
  }
}


class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(28.8608,0);
    path_0.lineTo(21.7215,0.987342);
    path_0.lineTo(21.7215,8.63291);
    path_0.lineTo(12.8354,10.6076);
    path_0.lineTo(12.8354,3.21519);
    path_0.lineTo(0,5.92405);
    path_0.lineTo(0,45.6456);
    path_0.lineTo(11.5949,64.1519);
    path_0.lineTo(14.3038,50.1013);
    path_0.lineTo(17.038,64.1519);
    path_0.lineTo(28.8608,76);
    path_0.lineTo(28.8608,0);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff89269B).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(28.8608,0);
    path_1.lineTo(36.0254,0.987342);
    path_1.lineTo(36.0254,8.63291);
    path_1.lineTo(44.9115,10.6076);
    path_1.lineTo(44.9115,3.21519);
    path_1.lineTo(57.7469,5.92405);
    path_1.lineTo(57.7469,45.6456);
    path_1.lineTo(46.152,64.1519);
    path_1.lineTo(43.4431,50.1013);
    path_1.lineTo(40.7089,64.1519);
    path_1.lineTo(28.8608,76);
    path_1.lineTo(28.8608,0);
    path_1.close();

    Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
    paint_1_fill.color = Color(0xff89269B).withOpacity(1.0);
    canvas.drawPath(path_1,paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(38.3036,16.5316);
    path_2.cubicTo(34.5568,16.5316,31.1897,18.1519,28.8606,20.7341);
    path_2.cubicTo(26.5314,18.1519,23.1644,16.5316,19.4175,16.5316);
    path_2.cubicTo(12.3796,16.5316,6.68335,22.2278,6.68335,29.2658);
    path_2.cubicTo(6.68335,36.3038,12.3796,42,19.4175,42);
    path_2.cubicTo(20.5061,42,21.5694,41.8481,22.5821,41.5949);
    path_2.lineTo(28.8606,55.2911);
    path_2.lineTo(35.139,41.5949);
    path_2.cubicTo(36.1517,41.8481,37.215,42,38.3036,42);
    path_2.cubicTo(45.3416,42,51.0378,36.3038,51.0378,29.2658);
    path_2.cubicTo(51.0378,22.2278,45.3416,16.5316,38.3036,16.5316);
    path_2.close();

    Paint paint_2_fill = Paint()..style=PaintingStyle.fill;
    paint_2_fill.color = Color(0xffFEFDFF).withOpacity(1.0);
    canvas.drawPath(path_2,paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(25.2655,29.2658);
    path_3.cubicTo(25.2655,32.481,22.6579,35.1139,19.4174,35.1139);
    path_3.cubicTo(16.2022,35.1139,13.5693,32.5063,13.5693,29.2658);
    path_3.cubicTo(13.5693,26.0506,16.1769,23.4177,19.4174,23.4177);
    path_3.cubicTo(22.6579,23.4177,25.2655,26.0253,25.2655,29.2658);
    path_3.close();

    Paint paint_3_fill = Paint()..style=PaintingStyle.fill;
    paint_3_fill.color = Color(0xff89269B).withOpacity(1.0);
    canvas.drawPath(path_3,paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(23.6202,26.8607);
    path_4.cubicTo(23.6202,27.8481,22.8354,28.6329,21.8481,28.6329);
    path_4.cubicTo(20.8607,28.6329,20.0759,27.8481,20.0759,26.8607);
    path_4.cubicTo(20.0759,25.8734,20.8607,25.0886,21.8481,25.0886);
    path_4.cubicTo(22.8101,25.0886,23.6202,25.8734,23.6202,26.8607);
    path_4.close();

    Paint paint_4_fill = Paint()..style=PaintingStyle.fill;
    paint_4_fill.color = Color(0xffFEFDFF).withOpacity(1.0);
    canvas.drawPath(path_4,paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(43.1899,29.6709);
    path_5.cubicTo(43.1899,32.6836,40.7342,35.1393,37.7215,35.1393);
    path_5.cubicTo(34.7089,35.1393,32.2532,32.6836,32.2532,29.6709);
    path_5.cubicTo(32.2532,26.6583,34.7089,24.2026,37.7215,24.2026);
    path_5.cubicTo(40.7342,24.2026,43.1899,26.6583,43.1899,29.6709);
    path_5.close();

    Paint paint_5_fill = Paint()..style=PaintingStyle.fill;
    paint_5_fill.color = Color(0xff89269B).withOpacity(1.0);
    canvas.drawPath(path_5,paint_5_fill);

    Path path_6 = Path();
    path_6.moveTo(41.1393,26.8607);
    path_6.cubicTo(41.1393,27.8481,40.3545,28.6329,39.3671,28.6329);
    path_6.cubicTo(38.3798,28.6329,37.595,27.8481,37.595,26.8607);
    path_6.cubicTo(37.595,25.8734,38.3798,25.0886,39.3671,25.0886);
    path_6.cubicTo(40.3291,25.0886,41.1393,25.8734,41.1393,26.8607);
    path_6.close();

    Paint paint_6_fill = Paint()..style=PaintingStyle.fill;
    paint_6_fill.color = Color(0xffFEFDFF).withOpacity(1.0);
    canvas.drawPath(path_6,paint_6_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}