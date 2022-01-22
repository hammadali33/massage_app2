import 'dart:math';

import 'package:flutter/material.dart';
import 'package:massage_app2/massage_Model.dart';

import 'massagepage.dart';

class MassageApp extends StatefulWidget {
  MassageApp({Key? key}) : super(key: key);

  @override
  _MassageAppState createState() => _MassageAppState();
}

class _MassageAppState extends State<MassageApp> {
  go(BuildContext c, String text) {
    Navigator.push(c, MaterialPageRoute(builder: (_) {
      return MassagePage(
        title: text,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    List unique = [];
    for (var items in wishes) {
      unique.add(items.category);
    }
    unique = unique.toSet().toList();
    return Scaffold(
      body: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 5),
          itemCount: unique.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (e, i) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    go(context, unique[i]);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 5,
                              color: Colors.black.withOpacity(0.3))
                        ]),
                    child: Center(
                        child: Text(
                      unique[i],
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
              )),
    );
  }
}
