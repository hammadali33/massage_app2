import 'dart:math';

import 'package:flutter/material.dart';
import 'package:massage_app2/detailpage.dart';
import 'package:massage_app2/massage_Model.dart';

class MassagePage extends StatelessWidget {
  final String? title;
  MassagePage({required this.title});

  go(BuildContext c, String text) {
    Navigator.push(c, MaterialPageRoute(builder: (_) {
      return DetailPage(
        detail: text,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('$title'),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: wishes
                  .where((element) => element.category == title)
                  .map((e) => InkWell(
                        onTap: () {
                          go(context, e.message!);
                        },
                        child: Card(
                            color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                e.message!,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )),
                      ))
                  .toList())),
    );
  }
}
