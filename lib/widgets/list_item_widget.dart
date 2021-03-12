import 'package:flutter/material.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/rendering.dart';

class ListItem extends StatelessWidget {
  final data;
  final List<String> entries; // = <String>['A', 'B', 'C','D', 'E', 'F'];
  final List<int> colorCodes;// = <int>[800, 700, 600,500, 400, 300];
  final Axis scrollDirection;
  const ListItem({Key key, this.data,this.entries,this.colorCodes,this.scrollDirection= Axis.horizontal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        child: ListView.builder(
            scrollDirection: scrollDirection,
            shrinkWrap: true, // new line
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.amber[colorCodes[index]],
                  borderRadius: BorderRadius.circular(7.0),
                ),
                height: 100,
                width: 100,
                child: Center(child: Text('Entry ${entries[index]}')),
              );
            }
        )
    );
  }
}
