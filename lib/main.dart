import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepOrange,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 3,
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
              Image(image: AssetImage("icons/ic_account_supervisor_outline_white_24dp.png")),
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
                title: Text('Feed'),
              ),
              BottomNavigationBarItem(
                icon: Image(image: AssetImage("icons/ic_compass_grey600_24dp.png")),
                title: Text('Explore'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
              )
            ],
          ),
          body: TabBarView(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                color:  Color.fromARGB(0, 237, 237, 237),
                child: Wrap(
                  children: [
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: new Container(
                                  width: 48,
                                  height: 48,
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage("images/avatar_iainsmith.jpg")
                                    )
                                  )),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(0, 4, 0, 2),
                                          child: Text(
                                            "Iain Smith",
                                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(16, 2, 0, 4),
                                          child: Transform(
                                            alignment: Alignment.center,
                                            transform: Matrix4.rotationY(math.pi),
                                            child: Image(image: AssetImage("icons/ic_shoe_sneaker_black_24dp.png")),
                                          ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(4, 2, 0, 4),
                                          child: Text(
                                            "Today at 12:41 PM",
                                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                                          )
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [Padding(
                              padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                              child: Text("Lunch Run",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ),
                            ],
                          )
                        ],
                      )
                    ),
                  ],
                )
              ),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
