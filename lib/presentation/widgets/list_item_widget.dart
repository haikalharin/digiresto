import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final data;
  final List<String> entries;
  final List<int> colorCodes;
  final Axis scrollDirection;
  const ListItem(
      {Key? key,
      this.data,
      required this.entries,
      required this.colorCodes,
      this.scrollDirection = Axis.horizontal})
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
            }));
  }
}
