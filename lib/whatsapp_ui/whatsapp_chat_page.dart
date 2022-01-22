import 'package:flutter/material.dart';

class WhatsAppChatPage extends StatefulWidget {
  WhatsAppChatPage({Key? key}) : super(key: key);

  @override
  _WhatsAppChatPageState createState() => _WhatsAppChatPageState();
}

class _WhatsAppChatPageState extends State<WhatsAppChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ...List.generate(
            20,
            (index) => ListTile(
              title: Text("MrGENERAL $index"),
              subtitle: Text("oye tito patiya na laaa😂"),
              leading: CircleAvatar(),
              trailing: Icon(Icons.check),
            ),
          )
        ],
      ),
    );
  }
}
