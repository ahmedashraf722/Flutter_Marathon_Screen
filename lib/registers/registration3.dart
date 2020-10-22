import 'package:flutter/material.dart';

class Register3 extends StatefulWidget {
  @override
  _Register3State createState() => _Register3State();
}

class _Register3State extends State<Register3> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/share/v.jpg",
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        Opacity(
          opacity: 0.5,
          child: CustomPaint(
            painter: BackGroundBody(
              leftPoint: 0.35,
              rightPoint: 0.4,
              midPoint1: 0.7,
              midPoint2: 0.6,
            ),
            child: Container(),
          ),
        ),
        CustomPaint(
          painter: BackGroundBody(
            leftPoint: 0.42,
            rightPoint: 0.5,
            midPoint1: 0.71,
            midPoint2: 0.61,
          ),
          child: Container(),
        )
      ],
    );
  }
}

class BackGroundBody extends CustomPainter {
  final double leftPoint;
  final double rightPoint;
  final double midPoint1;
  final double midPoint2;

  BackGroundBody(
      {this.leftPoint, this.rightPoint, this.midPoint1, this.midPoint2});

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    Gradient gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFF3181),
        Color(0xFFFA7537),
      ],
      stops: [0.5, 0.9],
    );
    Paint paint = Paint();
    paint.shader = gradient.createShader(rect);
    Path path = Path();

    path.lineTo(0, size.height * leftPoint);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * rightPoint);
    path.lineTo(size.width * midPoint1, size.height * midPoint2);
    path.lineTo(0, size.height * leftPoint);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
