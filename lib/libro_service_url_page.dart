import 'package:flutter/material.dart';

class LibroServideUrlPage extends StatelessWidget {
  const LibroServideUrlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          Text("Libro Service URL"),
          Text(longLibroText),
        ],
      ),
    );
  }
}

const longLibroText = '''
Hey, thanks for using HomeSaver. 


The basic functionality of the app is that the add button is pressed, an area on the map is touched, and the address of that location is saved.​

I'm planning to add more features but I need the help of Users.  If you like HomeSaver and think that theres a feature that would be helpful, reach out, let me know.  If HomeSaver is useless and doesn't serve your purpose, then let me know,

 

If there are any questions comments or concerns about this app please feel free to reach out to melito.creates@gmail.com.
''';
