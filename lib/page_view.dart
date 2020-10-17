import 'package:flutter/material.dart';
import 'package:marathon/profiles/profile5/profile5.dart';

class PageViewScreens extends StatefulWidget {
  @override
  _PageViewScreensState createState() => _PageViewScreensState();
}

class _PageViewScreensState extends State<PageViewScreens> {
  PageController _controller = PageController();

  List<Widget> _list = [
    Center(child: Pages(text: "Page1", color: Colors.teal)),
    Center(child: Pages(text: "Page2", color: Colors.blue)),
    Center(child: Pages(text: "Page3", color: Colors.orangeAccent)),
    Center(child: Pages(text: "Page4", color: Colors.red)),
    Center(child: Pages(text: "Page5", color: Colors.amber)),
    Center(child: Pages(text: "Page6", color: Colors.white)),
    Center(child: Pages(text: "Page7", color: Colors.cyanAccent)),
    Center(child: Pages(text: "Page8", color: Colors.yellow)),
    Center(child: Pages(text: "Page9", color: Colors.blueGrey)),
    Center(child: Pages(text: "Page10", color: Colors.pink)),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Profile5()));
      },
      child: Scaffold(
        backgroundColor: Colors.blueGrey[800],
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text(
            "Page View",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: Text(
                "page:  " +
                    (_currentIndex + 1).toString() +
                    "/" +
                    _list.length.toString(),
                textScaleFactor: 2,
              ),
            ),
          ],
        ),
        body: PageView(
          children: _list,
          scrollDirection: Axis.horizontal,
          controller: _controller,
          //reverse: true,
          // physics: BouncingScrollPhysics(),
          // pageSnapping: true,
          onPageChanged: (num) {
            setState(() {
              _currentIndex = num;
            });
          },
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.add_circle,
                size: 40,
                color: Colors.red[900],
              ),
              onPressed: () {
                setState(() {
                  _list.add(_textCenter(context));
                });
                if (_currentIndex != _list.length - 1) {
                  _controller.jumpToPage(_currentIndex + 1);
                } else {
                  _controller.jumpToPage(0);
                }
              },
            ),
            IconButton(
              icon: Icon(
                Icons.delete,
                size: 40,
                color: Colors.red[900],
              ),
              onPressed: () {
                _list.removeAt(_currentIndex);
                setState(() {
                  _controller.jumpToPage(_currentIndex - 1);
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _textCenter(BuildContext context) {
    return Center(
      child: Text(
        "New Page",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

class Pages extends StatelessWidget {
  final String text;
  final Color color;

  Pages({this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
