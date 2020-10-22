import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marathon/registers/registration2.dart';

class Register1 extends StatefulWidget {
  @override
  _Register1State createState() => _Register1State();
}

class _Register1State extends State<Register1> {
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
            "assets/images/registration/darkbg1.jpg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 180),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      "Welcome Back!",
                      style: TextStyle(
                        letterSpacing: 1.2,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Text(
                      "Sign in to your account",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  _formBody(context),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Create one",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _colorText = Color(0xffF7c41c);

  Widget _formBody(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      margin: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Color(0xff121212),
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Theme(
          data: ThemeData(
            primaryColor: Colors.grey,
          ),
          child: Stack(
            children: [
              Form(
                key: _key,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _editingEmailController,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: "email@gmail.com",
                        hintStyle: TextStyle(color: Color(0xff6B6B6B)),
                        labelText: "Your Email",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        focusColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      controller: _editingPasswordController,
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "**************",
                        hintStyle: TextStyle(color: Color(0xff6B6B6B)),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        focusColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        suffixIcon: Icon(Icons.lock, color: Colors.white),
                        suffixStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: InkWell(
                  onTap: () {},
                  child: Transform.translate(
                    offset: Offset(-5, 5),
                    child: Text(
                      "Forgot Passwords?",
                      style: TextStyle(color: _colorText),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register2()));
                  },
                  child: Transform.translate(
                    offset: Offset(32, 32),
                    child: Container(
                      width: 160,
                      height: 55,
                      decoration: BoxDecoration(
                          color: _colorText,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            bottomLeft: Radius.circular(35),
                            bottomRight: Radius.circular(35),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "LOGIN",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward,
                            size: 18,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
