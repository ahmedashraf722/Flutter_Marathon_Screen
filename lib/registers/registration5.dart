import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marathon/registers/registration6.dart';

class Register5 extends StatefulWidget {
  @override
  _Register5State createState() => _Register5State();
}

class _Register5State extends State<Register5> {
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
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Register6()));
      },
      child: Theme(
        data: ThemeData(
          fontFamily: GoogleFonts.macondo().fontFamily,
        ),
        child: Stack(
          children: [
            CustomPaint(
              painter: BackGround(),
              child: Container(),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: SingleChildScrollView(
                child: _bodyProfile(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bodyProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 60, top: 295, right: 60),
      child: Column(
        children: [
          Text(
            "Welcome to Back",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 5),
          Text(
            "BookFlutter",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 38,
              letterSpacing: 1.2,
            ),
          ),
          SizedBox(height: 30),
          _bodyContent(context),
          SizedBox(height: 25),
          _forgotEmail(context),
        ],
      ),
    );
  }

  Widget _bodyContent(BuildContext context) {
    return Form(
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
              color: _colorText,
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
        ],
      ),
    );
  }

  Color _colorText = Color(0xffFBC02D);

  Widget _forgotEmail(BuildContext context) {
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
    Gradient gradient3 = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFE33F0A),
        Color(0xFFE6186E),
      ],
      stops: [
        0.0,
        0.8,
      ],
    );
    Rect rect3 = Rect.fromLTWH(0, 0, size.width, size.height);
    Paint paint3 = Paint();
    paint3.shader = gradient3.createShader(rect3);
    canvas.drawCircle(
      Offset(size.width - (size.width * 0.1), size.height * 0.1),
      900,
      paint3,
    );

    Gradient gradient2 = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFF06234),
        Color(0xFFFF65A5),
      ],
      stops: [
        0.0,
        0.8,
      ],
    );
    Rect rect2 = Rect.fromLTWH(0, 0, size.width, size.height);
    Paint paint2 = Paint();
    paint2.shader = gradient2.createShader(rect2);

    Path path2 = Path();
    Offset offset = Offset(size.width - (size.width * 0.1), size.height * 0.1);
    Offset(size.width - (size.width * 0.1) - 3, size.height * 0.1 - 3);
    Rect rect4 = Rect.fromCircle(center: offset, radius: 305);
    path2.addOval(rect4);
    canvas.drawShadow(path2, Colors.black.withOpacity(0.4), 6, true);

    canvas.drawCircle(
      Offset(size.width - (size.width * 0.1), size.height * 0.1),
      300,
      paint2,
    );

    Gradient gradient1 = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color(0xFFFF8A64),
        Color(0xFFFF65A5),
      ],
      stops: [
        0.0,
        0.2,
      ],
    );
    Rect rect1 = Rect.fromLTWH(0, 0, size.width, size.height);
    Paint paint1 = Paint();
    paint1.shader = gradient1.createShader(rect1);
    Path path = Path();
    Offset offset1 = Offset(size.width - (size.width * 0.1), size.height * 0.1);
    Offset offset2 =
        Offset(size.width - (size.width * 0.1) - 3, size.height * 0.1 - 3);
    Rect rect = Rect.fromCircle(center: offset2, radius: 155);
    path.addOval(rect);
    canvas.drawShadow(path, Colors.black.withOpacity(0.4), 6, true);
    canvas.drawCircle(
      offset1,
      150,
      paint1,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
