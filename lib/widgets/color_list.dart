// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ColorList extends StatefulWidget {
  const ColorList({super.key});

  @override
  State<ColorList> createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  int currentindex = 0;
  List<Color> colors = [
    Colors.purple,
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.pink,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      child: ListView.builder(
        itemBuilder:
            (context, index) => GestureDetector(
              onTap: () 
                 {
                  currentindex = index;
                  setState(() {});
                
              },
              child: ColorItem(
                isselected: currentindex == index,
                color: colors[index],
              ),
            ),
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isselected, required this.color});
  final bool isselected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child:
          isselected
              ? CircleAvatar(
                backgroundColor: Colors.white,
                radius: 34,
                child: CircleAvatar(backgroundColor: color, radius: 32),
              )
              : CircleAvatar(backgroundColor: color, radius: 34),
    );
  }
}
