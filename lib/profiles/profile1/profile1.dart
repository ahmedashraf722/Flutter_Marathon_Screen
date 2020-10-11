import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marathon/animated_container_leading.dart';
import 'package:marathon/profiles/profile1/provider.dart';
import 'package:marathon/profiles/profile1/user.dart';

class Profile1 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  Profile profile = ProfileProvider.getProfile();
  Color _textColor = Color(0xFF4e4e4e);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => LeadingContainer()));
      },
      child: Theme(
        data: ThemeData(fontFamily: 'NotoSansJP'),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/profiles/landscape_1.jpg",
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.45,
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.bars,
                  ),
                ),
                title: Text(
                  "PROFILE",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                  ),
                ),
                centerTitle: true,
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.cog,
                      ),
                    ),
                  ),
                ],
              ),
              body: Stack(
                children: [
                  CustomPaint(
                    painter: ProfilePainter(),
                    child: Container(),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.07,
                    top: MediaQuery.of(context).size.height * 0.24,
                    child: CircleAvatar(
                      minRadius: 40,
                      backgroundImage:
                          ExactAssetImage('assets/images/share/a.jpg'),
                    ),
                  ),
                  _bodyText(context),
                  _bottomBar(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bodyText(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.36,
      bottom: 24,
      right: 24,
      left: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 6,
            ),
            child: Text(
              profile.user.name,
              style: TextStyle(
                color: _textColor,
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.grey[400],
              ),
              Text(
                profile.user.address,
                style: TextStyle(
                  color: _textColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 32,
              bottom: 16,
            ),
            child: Text(
              "ABOUT ME",
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              profile.user.about,
              softWrap: true,
              style: TextStyle(
                color: _textColor,
                fontSize: 18,
                height: 1.2,
                letterSpacing: 1.1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle _bottomTextStyle = TextStyle(
    color: Colors.grey[400],
  );

  TextStyle _bottomCounterStyleBar = TextStyle(
    color: Color(0xFF4e4e4e),
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );

  Widget _bottomBar(BuildContext context) {
    return Positioned(
      bottom: 15,
      left: 24,
      right: 24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "FOLLOWERS",
                style: _bottomTextStyle,
              ),
              SizedBox(height: 6),
              Text(
                profile.followers.toString(),
                style: _bottomCounterStyleBar,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "FOLLOWING",
                style: _bottomTextStyle,
              ),
              SizedBox(height: 6),
              Text(
                profile.following.toString(),
                style: _bottomCounterStyleBar,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "FRIENDS",
                style: _bottomTextStyle,
              ),
              SizedBox(height: 6),
              Text(
                profile.friends.toString(),
                style: _bottomCounterStyleBar,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfilePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();
    paint.color = Colors.white;
    path.lineTo(0, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.39);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.25);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
