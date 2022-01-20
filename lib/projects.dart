import 'package:clare_website/individual_project.dart';
import 'package:clare_website/project_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:url_launcher/url_launcher.dart';

List<IndividualProject> _projects = get_projects();

Widget Projects(context) {
  return Container(
      margin: EdgeInsets.all(5),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SingleProject(context, _projects[0]),
            SingleProject(context, _projects[1]),
            SingleProject(context, _projects[2]),
            SingleProject(context, _projects[3]),
            SingleProject(context, _projects[4]),
            SingleProject(context, _projects[5]),
            SingleProject(context, _projects[6]),
            SingleProject(context, _projects[7]),
            SingleProject(context, _projects[8]),
          ],
        ),
      ));
}

Widget SingleProject(context, project) {
  return Container(
      child: Card(
          child: ExpansionTile(
              collapsedBackgroundColor: Theme.of(context).colorScheme.secondary,
              backgroundColor: Theme.of(context).colorScheme.background,
              expandedAlignment: Alignment.topLeft,
              childrenPadding: EdgeInsets.all(20),
              title: Column(
                children: [
                  ListTile(
                    leading: Image.asset(project.path_to_image),
                    title: Text(project.title),
                    subtitle: Text(project.short_description),
                  )
                ],
              ),
              children: <Widget>[
        Text(project.long_description),
        SizedBox(height: 20),
        project.relevant_links.length > 0
            ? _buildLinks(project.relevant_links)
            : Container(width: 0, height: 0),
        SizedBox(height: 20),
        project.list_of_video_ids.length > 0
            ? Center(
                child: Container(
                    margin: EdgeInsets.all(20),
                    height: 200,
                    child: YoutubePlayerControllerProvider(
                      // Provides controller to all the widget below it.
                      controller: YoutubePlayerController(
                          initialVideoId: '',
                          params: YoutubePlayerParams(
                              playlist: project.list_of_video_ids)),
                      child: YoutubePlayerIFrame(
                        aspectRatio: 16 / 9,
                      ),
                    )))
            : Container(width: 0, height: 0)
      ])));
}

Widget _buildLinks(List<String> links) {
  List<Widget> list = <Widget>[];
  for (var i = 0; i < links.length; i++) {
    if (links[i].contains('github')) {
      list.add(Row(children: <Widget>[
        Image.asset('assets/images/github_logo.png', height: 20),
        SizedBox(width: 5),
        InkWell(
            child:
                new Text(links[i], style: TextStyle(color: Colors.blueAccent)),
            onTap: () => launch(links[i]))
      ]));
    } else {
      list.add(InkWell(
          child: new Text(links[i], style: TextStyle(color: Colors.blueAccent)),
          onTap: () => launch(links[i])));
    }
  }
  return new Row(children: list);
}
