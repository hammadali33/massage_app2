import 'package:flutter/material.dart';
import 'package:massage_app2/whatsapp_ui/whatsapp_chat_page.dart';

class WhatsAppMain extends StatelessWidget {
  List menu = [
    "New Group",
    "New broadcast",
    "Linked device",
    "Starred massages",
    "Settingd",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(
                itemBuilder: (_) => [
                      ...List.generate(
                        5,
                        (index) => PopupMenuItem(
                          child: Text(menu[index]),
                        ),
                      )
                    ])
          ],
          backgroundColor: Color(0xff075e55),
          title: Text("WhatsApp"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera),
              ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff075e55),
          onPressed: () {},
          child: Icon(Icons.call),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Camera")),
            WhatsAppChatPage(),
            Center(child: Text("Status")),
            Center(child: Text("Calls")),
          ],
        ),
      ),
    );
  }
}
