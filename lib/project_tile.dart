import 'package:flutter/material.dart';
import 'package:personal_site/material_design.dart';

class ProjectTile extends StatelessWidget {
  ProjectTile({
    required this.title,
    required this.desc,
    required this.start,
    required this.status,
    required this.platform,
    required this.stack});

  String title;
  String desc;
  String start;
  String status;
  String platform;
  String stack;


  @override
  Widget build(BuildContext context) {
    TextStyle smallStyle = marketingPageText().copyWith(
        color: mainColor,
        fontSize: 20);
    return ListTile(
      title: Text(title,
        style: landingPageText().copyWith(
            fontSize: 40,
            color: mainColor,
            fontWeight: FontWeight.bold),),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10.0,),
          Text("Description:   " + desc,
            style:smallStyle ,),
          const SizedBox(height: 10.0,),
          Text("Platform(s):   " + platform,
            style:smallStyle ,),
          const SizedBox(height: 10.0,),
          Text("Start Date:   " + start,
            softWrap: true,
            style:smallStyle ,),
          const SizedBox(height: 10.0,),
          Text("Status:   " + status,
            style:smallStyle ,),
        ],
      ) ,
    );
  }
}
