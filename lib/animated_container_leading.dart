import 'package:flutter/material.dart';
import 'package:marathon/profiles/profile2/profile2.dart';

class LeadingContainer extends StatefulWidget {
  @override
  _LeadingContainerState createState() => _LeadingContainerState();
}

class _LeadingContainerState extends State<LeadingContainer> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF97997),
        title: Text(
          "AnimatedContainer",
          style:
              TextStyle(fontWeight: FontWeight.bold, fontFamily: 'NotoSansJP'),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile2()));
            },
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: selected ? 300 : 150,
            height: selected ? 150 : 300,
            color: selected ? Colors.redAccent : Colors.orange,
            alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            child: FlutterLogo(
              size: 85,
            ),
          ),
        ),
      ),
    );
  }
}
