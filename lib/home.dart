import 'package:clare_website/projects.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Home(context) {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/clare_background.png')),
          ),
        ),
        SizedBox(height: 40),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                    margin: EdgeInsets.all(20.0),
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      'Hello! I am a junior at William and Mary studying computer science and physics. I\'m from Springfield, VA and recently graduated from Thomas Jefferson High School for Science and Technology. After making my first rock, paper, scissors app in 7th grade, I never looked back and devoted my high school and college career to taking as many computer science classes as possible and creating outside opportunities to make even more apps, websites, and scripts. Outside of coding, I enjoy physics, dance, and drinking as many chai lattes as my university dining plan will allow.',
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    margin: EdgeInsets.all(20.0),
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      'Fast facts\nabout\nme',
                      style: TextStyle(fontSize: 20),
                    )),
              )
            ]),
        SizedBox(height: 40),
        Container(
          width: 400,
          height: 400,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/clare_avatar.png'),
          ),
        ),
        SizedBox(height: 40),
      ],
    ),
  );
}
