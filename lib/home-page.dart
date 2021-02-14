import 'package:flutter/material.dart';
import './activity-summary-list.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Following".toUpperCase()),
              Tab(text: "You".toUpperCase()),
              Tab(text: "Clubs".toUpperCase()),
            ],
          ),
          title: Text('Feed'),
          centerTitle: false,
          actions: [
            Image(
                image: AssetImage(
                    "icons/ic_account_supervisor_outline_white_24dp.png")),
            Image(image: AssetImage("icons/ic_bell_outline_white_24dp.png")),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
          backgroundColor: Colors.deepOrange,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: 0, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Feed',
            ),
            BottomNavigationBarItem(
              icon:
                  Image(image: AssetImage("icons/ic_compass_grey600_24dp.png")),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            )
          ],
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                "Not yet implemented",
                textAlign: TextAlign.center,
              ),
            ),
            ActivitySummaryList(),
            Center(
              child: Text(
                "Not yet implemented",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
