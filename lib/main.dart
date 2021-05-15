import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(StarterApp());
}

class StarterApp extends StatefulWidget {
  @override
  _StarterAppState createState() => _StarterAppState();
}

class _StarterAppState extends State<StarterApp> {
  final Future<FirebaseApp> _initialisation = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialisation,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return SomethingWentWrong(errorTrace: snapshot.stackTrace);
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return MyAwesomeFirebaseApp();
        }

        return Loading();
      },
    );
  }
}

class SomethingWentWrong extends StatelessWidget {
  final StackTrace errorTrace;

  SomethingWentWrong({this.errorTrace});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          child: Text(
            errorTrace.toString(),
            style: TextStyle(fontSize: 12.0),
          ),
        ),
      ),
    );
  }
}

class MyAwesomeFirebaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          child: Text(
            'This is my awesome firebase enabled app',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.normal,
              color: Colors.blueAccent,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          child: (Text('Loading.......')),
        ),
      ),
    );
  }
}
