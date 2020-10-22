import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register4 extends StatefulWidget {
  @override
  _Register4State createState() => _Register4State();
}

class _Register4State extends State<Register4> {
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
      child: CustomPaint(
        painter: BackGround(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Stack(
            children: [
              _titleLogin(context),
              _profileTitle(context),
              _bodyProfile(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _profileTitle(BuildContext context) {
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.30,
      right: MediaQuery.of(context).size.width * 0.32,
      top: 155,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.18,
        height: MediaQuery.of(context).size.height * 0.18,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage("assets/images/share/a.jpg"),
              fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget _titleLogin(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      right: 0,
      bottom: MediaQuery.of(context).size.height * 0.10,
      child: Column(
        children: [
          Text(
            "Welcome back to",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 2),
          Text(
            "BookFlutter",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _bodyProfile(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: MediaQuery.of(context).size.height * 0.12,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Please login to continue",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 14,
              ),
            ),
            _formLogin(context),
          ],
        ),
      ),
    );
  }

  Widget _formLogin(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 33, left: 33, top: 30),
      child: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              style: TextStyle(
                color: Colors.grey,
              ),
              controller: _editingEmailController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hoverColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                hintText: "Email@address.com",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff06205d))),
              ),
            ),
            SizedBox(height: 2),
            TextFormField(
              style: TextStyle(
                color: Colors.grey,
              ),
              controller: _editingPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hoverColor: Colors.white,
                hintText: "**********",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                prefixIcon: Icon(
                  Icons.vpn_key,
                  color: Colors.grey,
                ),
                suffixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.grey,
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff06205d))),
              ),
            ),
            SizedBox(height: 14),
            Container(
              width: MediaQuery.of(context).size.width * 0.84,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xfffd8b23),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Center(
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            _actionEnd(context)
          ],
        ),
      ),
    );
  }

  Color _colorText = Color(0xfffd8b23);

  Widget _actionEnd(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FlatButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: Text(
              "Don't have an account?",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              "Create one",
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: _colorText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BackGround extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Color(0xff06205d);
    canvas.drawPaint(paint);

    Path path2 = Path();
    path2.lineTo(0, 0);
    path2.lineTo(0, size.height * 0.3);
    path2.quadraticBezierTo(
        size.width * 0.5, size.height * 0.50, size.width, size.height * 0.3);
    path2.lineTo(size.width, 0);
    path2.lineTo(0, 0);
    path2.close();
    paint.color = Color(0xffE45600);
    canvas.drawPath(path2, paint);

    Path path1 = Path();

    path1.lineTo(0, 0);
    path1.lineTo(0, size.height * 0.16);
    path1.quadraticBezierTo(
        size.width * 0.5, size.height * 0.65, size.width, size.height * 0.16);
    path1.lineTo(size.width, 0);
    path1.lineTo(0, 0);
    path1.close();
    Gradient gradient1 = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xfffd8b23),
        Color(0xfff96213),
      ],
      stops: [
        0.0,
        0.4,
      ],
    );
    Rect rect1 = Rect.fromLTWH(0, 0, size.width, size.height);
    paint.shader = gradient1.createShader(rect1);
    canvas.drawPath(path1, paint);
    Paint paint2 = Paint();
    paint2.color = Colors.white;
    canvas.drawCircle(
        Offset(size.width * 0.49, size.height * 0.38), 80, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
