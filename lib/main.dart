import 'package:clare_website/experience.dart';
import 'package:clare_website/projects.dart';
import 'package:clare_website/resume.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blueGrey,
            primaryColorDark: Colors.blueGrey,
            accentColor: Colors.greenAccent,
            cardColor: Colors.cyan,
            backgroundColor: Colors.cyanAccent,
            errorColor: Colors.redAccent,
          ).copyWith(secondary: Colors.cyan),
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.white),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic, color: Colors.white),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind', color: Colors.black),
          )),
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _Main();
}

class _Main extends State<Main> {
  Widget _curDisplay = const Center(child: CircularProgressIndicator());

  void initState() {
    super.initState();
    WidgetsBinding.instance
        ?.addPostFrameCallback((_) => _updatePage(Home(context)));
  }

  void _updatePage(Widget newPage) {
    setState(() {
      _curDisplay = newPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Clare Heinbaugh"),
            centerTitle: false,
            actions: <Widget>[
              TextButton(
                child: Text('Home',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.background,
                        fontSize: 20)),
                onPressed: () {
                  _updatePage(Home(context));
                },
              ), //Icon
              TextButton(
                child: Text('Projects',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.background,
                        fontSize: 20)),
                onPressed: () {
                  _updatePage(Projects(context));
                },
              ),
              TextButton(
                child: Text('Experience',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.background,
                        fontSize: 20)),
                onPressed: () {
                  _updatePage(Experience(context));
                },
              ),
              TextButton(
                child: Text('Resume',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.background,
                        fontSize: 20)),
                onPressed: () {
                  _updatePage(Resume(context));
                },
              ), // Button
            ], //<Widget>[]
            leading: Container(
              margin: const EdgeInsets.all(5.0),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/clare_avatar.png'),
              ),
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
            elevation: 50.0,
            toolbarHeight: 60,
            titleTextStyle: TextStyle(
                color: Theme.of(context).colorScheme.background, fontSize: 40)),
        body: _curDisplay);
  }
}
