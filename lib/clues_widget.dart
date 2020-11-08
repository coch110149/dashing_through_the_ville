import 'dart:developer';

import 'package:dashing_through_the_ville/clue_data.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import 'clue_data.dart';

class Clues extends StatefulWidget {
  @override
  _CluesState createState() => _CluesState();
}

class _CluesState extends State<Clues> {
  var clueData = ClueData.getData;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: clueData.length,
      itemBuilder: (context, index) {
        return Container(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: Text(clueData[index]['SponsorName']),
                ),
                ExpandablePanel(
                  header: Text("Clue 1"),
                  expanded: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      clueData[index]['Clue1'],
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                ),
                ExpandablePanel(
                  header: Text("Clue 2"),
                  expanded: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      clueData[index]['Clue2'],
                      style: TextStyle(color: Colors.red.withOpacity(0.6)),
                    ),
                  ),
                ),
                ExpandablePanel(
                  header: Text("Clue 3"),
                  expanded: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      clueData[index]['Clue3'],
                      style: TextStyle(color: Colors.green.withOpacity(0.6)),
                    ),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () => log("sending..."),
                      child: const Icon(Icons.qr_code),
                    ),
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {},
                      child: const Icon(Icons.wrap_text_sharp),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    ));
  }
}
