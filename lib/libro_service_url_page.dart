import 'package:flutter/material.dart';
import 'package:personal_site/material_design.dart';

class LibroServideUrlPage extends StatelessWidget {
  const LibroServideUrlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: const SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text("Libro Service URL"),
            Text(longLibroText),
          ],
        ),
      ),
    );
  }
}

const longLibroText = '''
Hey, thanks for using Libro. 

The basic functionality of the app is that you can add different books to the different lists of "reading", "have read" and "to be read".

Its very simple, but I'm hoping to keep building off of it. ​

If there are any questions comments or concerns about this app please feel free to reach out to melito.creates@gmail.com.
''';
