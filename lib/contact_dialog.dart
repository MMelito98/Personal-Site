
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'material_design.dart';

Future<void> showContactDialog(BuildContext context) async {
  showDialog(
      context: context,
      builder: (context) {
        var myEmail = 'melito.creates@gmail.com';
        return Dialog(
          backgroundColor: Colors.white,
          child: SizedBox(
            width: 650.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    },
                        icon: const Icon(Icons.arrow_back)),
                    Flexible(
                      child: Text(contactMessage,
                        style: landingPageText().copyWith(color: mainColor),
                      ),
                    ),
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(60),
                    child: SelectableText(myEmail,
                      style: marketingPageText().copyWith(color: mainColor),)
                ),
              ],
            ),
          ),
        );
      });
}

var contactMessage = "Please reach out to the following email";
