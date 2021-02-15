import 'package:flutter/material.dart';
import 'package:strava_flutter/strava.dart';
import './home-page.dart';
import './secret.dart';

void main() {
  runApp(StrutterApp());
}

class StrutterApp extends StatefulWidget {
  @override
  _StrutterAppState createState() => _StrutterAppState();
}

class _StrutterAppState extends State<StrutterApp> {
  final _strava = Strava(true, secret);
  bool _isLoading = true;

  void _load() async {
    await _strava.oauth(clientId, 'activity:read_all', secret, 'auto');
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Strutter',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: _isLoading
          ? Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : HomePage(),
    );
  }
}
