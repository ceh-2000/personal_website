import 'package:clare_website/experience.dart';
import 'package:clare_website/projects.dart';
import 'package:clare_website/resume.dart';
import 'package:flutter/material.dart';

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
          primaryColor: Colors.purple,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey)
              .copyWith(secondary: Colors.lightGreenAccent)
          // primaryColorLight: Colors.p,
          //   primaryColorDark
          ),
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

  void _updatePage(Widget newPage){
    setState(() {
      _curDisplay = newPage;
    });
  }

  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) => _updatePage(Home(context)));
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
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 20)),
                onPressed: () {
                  _updatePage(Home(context));
                },
              ), //Icon
              TextButton(
                child: Text('Projects',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 20)),
                onPressed: () {
                  _updatePage(Projects(context));
                },
              ),
              TextButton(
                child: Text('Experience',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 20)),
                onPressed: () {
                  _updatePage(Experience(context));
                },
              ),
              TextButton(
                child: Text('Resume',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
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
                color: Theme.of(context).colorScheme.secondary, fontSize: 40)),
        body: _curDisplay);
  }
}
