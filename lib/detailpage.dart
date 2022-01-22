import 'dart:math';

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class DetailPage extends StatelessWidget {
  final String? detail;
  DetailPage({this.detail});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)],
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 5,
                        color: Colors.black.withOpacity(0.3))
                  ]),
              // height: 200,
              constraints: BoxConstraints(minHeight: 250),
              width: double.infinity,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    detail!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    Share.share(detail!);
                  },
                  icon: Icon(
                    Icons.share,
                    size: 40,
                  )),
              SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.copy,
                    size: 40,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
