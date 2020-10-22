import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marathon/registers/registration4.dart';

class Register3 extends StatefulWidget {
  @override
  _Register3State createState() => _Register3State();
}

class _Register3State extends State<Register3> {
  var _key = GlobalKey<FormState>();

  final TextEditingController _editingEmailController = TextEditingController();
  final TextEditingController _editingPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _editingEmailController.dispose();
    _editingPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      child: Stack(
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
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Padding(
              padding: EdgeInsets.all(30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 400),
                    Transform.translate(
                      offset: Offset(0, -7),
                      child: Text(
                        "Login to Start!",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    _formBody(context),
                    _actionEnd(context),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _formBody(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Form(
            key: _key,
            child: Column(
              children: [
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _editingEmailController,
                  decoration: InputDecoration(
                    labelText: "Your email",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    hintText: "Email@address.com",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 2),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _editingPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    hintText: "**********",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    suffixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    focusColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(-2, 25),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Register4()));
            },
            child: Container(
              width: 80,
              height: 80,
              margin: EdgeInsets.only(left: 10, top: 5),
              decoration: BoxDecoration(
                color: Color(0xfff9c660),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  "Go",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.1,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Color _colorText = Color(0xfff9ea60);

  Widget _actionEnd(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FlatButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                color: _colorText,
                letterSpacing: 1.2,
              ),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              "Sign Up",
              style: TextStyle(
                color: _colorText,
                letterSpacing: 1.2,
              ),
            ),
          ),
        ],
      ),
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
