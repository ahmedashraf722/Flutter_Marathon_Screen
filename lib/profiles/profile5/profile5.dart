import 'package:flutter/material.dart';
import 'package:marathon/chats/chat1/chat_list.dart';
import 'package:marathon/profiles/profile2/photo_repository.dart';
import 'package:marathon/profiles/profile5/profile.dart';

class Profile5 extends StatefulWidget {
  @override
  _Profile5State createState() => _Profile5State();
}

class _Profile5State extends State<Profile5>
    with SingleTickerProviderStateMixin {
  static Color _textColor = Color(0xff4e4e4e);

  Profile _profile = ProfileProvider.getProfile();
  bool _visitable = false;
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 4, vsync: this);
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _visitable = true;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: _textColor),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: _textColor),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChatList()));
            },
          ),
        ],
      ),
      body: _bodyContent(context),
    );
  }

  Widget _bodyContent(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _profileTitle(context),
        ],
      ),
    );
  }

  Widget _profileTitle(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            margin: EdgeInsets.only(bottom: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(120),
              image: DecorationImage(
                image: AssetImage("assets/images/share/a.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            _profile.user.name,
            style: TextStyle(
              color: Colors.blueGrey[800],
              fontSize: 26,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 7),
          Text(
            _profile.user.work,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 16),
          _followContent(context),
          SizedBox(height: 30),
          Flexible(
            child: _tabBarContent(context),
          ),
        ],
      ),
    );
  }

  Widget _followContent(BuildContext context) {
    return Align(
      child: MaterialButton(
        color: Color(0xFFf05522),
        elevation: 0,
        onPressed: () {},
        child: AnimatedPadding(
          duration: Duration(milliseconds: 400),
          padding: EdgeInsets.symmetric(
              horizontal: _visitable ? 16 : 2, vertical: 8),
          child: Text(
            'FOLLOW',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      ),
    );
  }

  Widget _tabBarContent(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 6),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey[200],
              ),
              bottom: BorderSide(
                color: Colors.grey[200],
              ),
            ),
          ),
          child: TabBar(
            labelColor: _textColor,
            indicatorColor: _textColor,
            indicatorWeight: 4,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 32),
            unselectedLabelColor: Colors.grey[400],
            controller: _tabController,
            tabs: [
              Tab(
                text: "PHOTOS",
              ),
              Tab(
                text: "VIDEOS",
              ),
              Tab(
                text: "POSTS",
              ),
              Tab(
                text: "FRIENDS",
              ),
            ],
          ),
        ),
        Flexible(
          child: TabBarView(
            controller: _tabController,
            children: [
              _photos(context),
              _video(context),
              _posts(context),
              _friends(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget _photos(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: List.generate(PhotoRepository.imageData2.length, (index) {
          return Image.network(
            PhotoRepository.imageData2[index],
            fit: BoxFit.cover,
          );
        }),
      ),
    );
  }

  Widget _video(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: List.generate(PhotoRepository.imageData2.length, (index) {
          return Image.network(
            PhotoRepository.imageData2[index],
            fit: BoxFit.cover,
          );
        }),
      ),
    );
  }

  Widget _posts(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: List.generate(PhotoRepository.imageData2.length, (index) {
          return Image.network(
            PhotoRepository.imageData2[index],
            fit: BoxFit.cover,
          );
        }),
      ),
    );
  }

  Widget _friends(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: List.generate(PhotoRepository.imageData2.length, (index) {
          return Image.network(
            PhotoRepository.imageData2[index],
            fit: BoxFit.cover,
          );
        }),
      ),
    );
  }
}
