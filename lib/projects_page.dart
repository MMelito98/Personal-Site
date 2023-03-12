import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_site/material_design.dart';
import 'package:personal_site/project_tile.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectPagesState();
}

class _ProjectPagesState extends State<ProjectsPage> {
  final List<ProjectTile> projectList = [];

  @override
  Widget build(BuildContext context)  {
    return FutureBuilder<List<ProjectTile>>(
      future: loadUpList(),
      builder:(context, snapshot) {
       return Container(
          width: double.infinity,
          height: 900,
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Projects",
                style: landingPageText().copyWith(color: mainColor),
              ),
              ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => snapshot.data?[index])
            ],
          ),
        );
       }
    );
  }

  Future<List<ProjectTile>>loadUpList() async {
    projectList.add(await jsonToTile("projects/homesaver.json"));
    projectList.add(await jsonToTile("assets/projects/personal_site.json"));
    projectList.add(await jsonToTile("assets/projects/Manufacturable.json"));
    return projectList;
  }


  jsonToTile(String path) async {
    var response = await rootBundle.loadString(path);
    print(response);
    var data = await jsonDecode(response);
    String title = data["title"];
    String desc = data["desc"];
    String start = data["start"];
    String status = data["status"];
    String stack = data["stack"];
    String platform = data["platform"];
    return ProjectTile(
      title: title,
      desc: desc,
      start: start,
      status: status,
      platform: platform,
      stack: stack,);
  }
}
