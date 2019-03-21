import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  @override
  _Assignment1State createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1>
    with SingleTickerProviderStateMixin<Assignment1> {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 16.0),
        color: Colors.blue,
        child: Column(
          children: <Widget>[
            buildSearchBar(),
            buildTabBar(),
            Expanded(child: buildTabBarView()),
          ],
        ),
      ),
    );
  }

  TabBar buildTabBar() {
    return TabBar(
      indicatorColor: Colors.white,
      indicatorWeight: 4,
      tabs: [
        Tab(
          icon: Icon(
            Icons.access_time,
            color: Colors.white,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.call,
            color: Colors.white,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.group,
            color: Colors.white,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.list,
            color: Colors.white,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.account_circle,
            color: Colors.white,
          ),
        ),
      ],
      controller: _tabController,
    );
  }

  TabBarView buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: <Widget>[
        _buildMessageList(),
        Container(
          color: Colors.white,
        ),
        Container(
          color: Colors.white,
        ),
        Container(
          color: Colors.white,
        ),
        Container(
          color: Colors.white,
        ),
      ],
    );
  }

  Widget buildSearchBar() {
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8, top: 16.0, bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      color: Colors.white,
      height: 55,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Search for people and groups",
                style: TextStyle(color: Colors.grey, fontSize: 18.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.mic,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMessageList() {
    return Container(
        color: Colors.white,
        child: ListView.builder(
            padding: EdgeInsets.all(0.0),
            shrinkWrap: true,
            itemCount: messageList.length,
            itemBuilder: (context, position) {
              return messageList[position];
            }));
  }
}

var messageList = [
  MessageListScreen(
    imageUrl: "http://www.venmond.com/demo/vendroid/img/avatar/big.jpg",
    username: "Margeret Lisa",
    sentTime: "10:38 PM",
    message: "Hello!!!",
  ),
  MessageListScreen(
    imageUrl:
        "http://profilepicturesdp.com/wp-content/uploads/2018/07/profile-picture-demo-7.jpg",
    username: "Love of my life",
    sentTime: "2:10 PM",
    message: "Call me urgently",
  ),
  MessageListScreen(
    imageUrl:
        "http://aacd.com/proxy.php?filename=images/Continuing%20Education/Residency/caroline.png",
    username: "Ernestine Kirsteen",
    sentTime: "08:02 PM",
    message: "Do you want to go out?",
  ),
  MessageListScreen(
    imageUrl:
        "https://www.jottarengenharia.com.br/assets/img/faces/face-19.jpg",
    username: "Amour Beatrice",
    sentTime: "06:20 AM",
    message: "LOL!!!",
  ),
  MessageListScreen(
    imageUrl:
        "http://portal.bilardo.gov.tr/assets/pages/media/profile/profile_user.jpg",
    username: "John doe",
    sentTime: "11:28 PM",
    message: "Way to go dude",
  ),
  MessageListScreen(
    imageUrl:
        "https://bdthemes.net/demo/joomla/kirion/images/sampledata/team/team17.jpg",
    username: "Nichole Brittany",
    sentTime: "09:18 PM",
    message: "Please, help!",
  ),
  MessageListScreen(
    imageUrl:
        "http://institut-prestige.andriasoft.com/wp-content/uploads/2013/12/021.jpg",
    username: "Tara Inka",
    sentTime: "12:56 PM",
    message: "Where are you?",
  ),
];

class MessageListScreen extends StatelessWidget {
  final String imageUrl;
  final String username;
  final String message;
  final String sentTime;

  MessageListScreen(
      {this.imageUrl, this.username, this.message, this.sentTime});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0, top: 8.0),
      child: ListTile(
        leading: Material(
          child: Image.network(
            imageUrl,
            width: 45.0,
            height: 45.0,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(24.0),
          ),
          clipBehavior: Clip.hardEdge,
        ),
        title: Text(
          username,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          message,
          style: TextStyle(color: Colors.grey),
        ),
        trailing: Text(
          sentTime,
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
