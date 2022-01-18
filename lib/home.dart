import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
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
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 20)),
              onPressed: () {},
            ), //Icon
            TextButton(
              child: Text('Projects',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 20)),
              onPressed: () {},
            ),
            TextButton(
              child: Text('Experience',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 20)),
              onPressed: () {},
            ),
            TextButton(
              child: Text('Resume',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 20)),
              onPressed: () {},
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/clare_background.png')),
              ),
            ),
            const Text(
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
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
