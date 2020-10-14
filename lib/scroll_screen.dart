import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marathon/profiles/profile2/photo_repository.dart';
import 'package:marathon/profiles/profile4/profile4.dart';

class ScreenBarItem extends StatefulWidget {
  @override
  _ScreenBarItemState createState() => _ScreenBarItemState();
}

class _ScreenBarItemState extends State<ScreenBarItem> {
  ScrollController _hideScrollController;
  bool _isVisible = true;

  @override
  void initState() {
    _hideScrollController = ScrollController();
    _hideScrollController.addListener(() {
      if (_hideScrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = false;
        });
      }
      if (_hideScrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = true;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _hideScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text(
          "Scroll Screen",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              FontAwesomeIcons.addressBook,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile4()));
            },
          ),
        ],
      ),
      bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: _isVisible ? 60 : 0.0,
        child: BottomAppBar(
          elevation: 8,
          shape: CircularNotchedRectangle(),
          color: Colors.teal[400],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home),
              Icon(Icons.add_a_photo),
              Icon(Icons.verified_user),
              Icon(Icons.more),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: ListView(
          controller: _hideScrollController,
          scrollDirection: Axis.vertical,
          children: List.generate(
            PhotoRepository.imgData3.length,
            (index) {
              return Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(
                  PhotoRepository.imgData3[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
