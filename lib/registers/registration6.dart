import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register6 extends StatefulWidget {
  @override
  _Register6State createState() => _Register6State();
}

class _Register6State extends State<Register6> {
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
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      child: Stack(
        children: [
          Image.asset(
            "assets/images/registration/waves_bg.jpg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
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
          Row(
            children: [
              SizedBox(width: 30),
              Text(
                "Book",
                style: TextStyle(
                  color: Color(0xffeb4137),
                  fontWeight: FontWeight.bold,
                  fontSize: 38,
                  letterSpacing: 1.2,
                ),
              ),
              Text(
                "Flutter",
                style: TextStyle(
                  color: Color(0xffffa810),
                  fontWeight: FontWeight.bold,
                  fontSize: 38,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          _bodyContent(context),
          SizedBox(height: 10),
          _forgotEmail(context),
        ],
      ),
    );
  }

  Color _colorForm = Color(0xff262628);

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
              fillColor: _colorForm,
              filled: true,
              hoverColor: _colorForm,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              hintText: "Email@address.com",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff06205d)),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
            ),
          ),
          SizedBox(height: 8),
          TextFormField(
            style: TextStyle(
              color: Colors.grey,
            ),
            controller: _editingPasswordController,
            obscureText: true,
            decoration: InputDecoration(
              fillColor: _colorForm,
              filled: true,
              hoverColor: _colorForm,
              hintText: "**********",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              prefixIcon: Icon(
                Icons.vpn_key,
                color: Colors.white,
              ),
              suffixIcon: Icon(
                Icons.lock_outline,
                color: Colors.grey,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff06205d)),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
            ),
          ),
          SizedBox(height: 14),
          Container(
            width: MediaQuery.of(context).size.width * 0.84,
            height: 55,
            decoration: BoxDecoration(
              color: Color(0xffE91E63),
              borderRadius: BorderRadius.all(Radius.circular(40)),
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

  Color _colorText = Color(0xff2273d7);

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
