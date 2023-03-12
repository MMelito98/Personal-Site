import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_site/contact_dialog.dart';
import 'package:personal_site/material_design.dart';
import 'package:personal_site/projects_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: mainColor ,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: mainColor,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text("Melito Creates",
                style: landingPageText(),),
            ],
          ),

        ),
        actions: [
          TextButton(
              onPressed: _contactDialog,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text('Contact',
                  style: marketingPageText(),),
              )
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 500,
                  child: Image.asset("me.jpeg",
                    fit: BoxFit.contain,),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                    width: 400,
                    padding: EdgeInsets.all(20),
                    child: Text(longText,
                      style: marketingPageText(),)
                )
              ],
            ),
            ProjectsPage(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _contactDialog,
        backgroundColor: Colors.white,
        tooltip: 'Reach out to me',
        child: Icon(Icons.email,
          color: mainColor,),
      ),
    );
  }

  _contactDialog() async {
    await showContactDialog(context);
  }
}

var longText =  '''
Hi, I'm Michael.  I was born to create great products.  

Checkout some of my projects, and reach out if you're interested in working together.
''';
