import 'package:flutter/material.dart';
import 'package:marathon/registers/registration3.dart';

class Register2 extends StatefulWidget {
  @override
  _Register2State createState() => _Register2State();
}

class _Register2State extends State<Register2> {
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
    return Stack(
      children: [
        Image.asset(
          "assets/images/registration/registrationbg2.jpg",
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(right: 80, left: 35),
                child: Form(
                  key: _key,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                      SizedBox(height: 65),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        controller: _editingEmailController,
                        decoration: InputDecoration(
                          labelText: "Email",
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
                      SizedBox(height: 15),
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
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register3()));
                        },
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xffD4f960),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 6),
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff358d1e),
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 60),
                      FlatButton(
                        onPressed: () {},
                        padding: EdgeInsets.only(right: 10, top: 25),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        padding: EdgeInsets.only(right: 20, bottom: 25),
                        child: Text(
                          "Create one",
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
