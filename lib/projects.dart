import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Projects(context) {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SingleProject(context, 'project name'),
        SingleProject(context, 'project name'),
        SingleProject(context, 'project name'),
        SingleProject(context, 'project name'),
      ],
    ),
  );
}

Widget SingleProject(context, name){
  return Container(
    margin: EdgeInsets.all(20),
    padding: EdgeInsets.all(20),
    child: Text(name)
  );
}
