// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorList extends StatefulWidget {
  const ColorList({super.key});

  @override
  State<ColorList> createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  int currentindex = 0;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      child: ListView.builder(
        itemBuilder:
            (context, index) => GestureDetector(
              onTap: () {
                currentindex = index;
                BlocProvider.of<AddNotesCubit>(context).color = kcolors[index];
                setState(() {});
              },
              child: ColorItem(
                isselected: currentindex == index,
                color: kcolors[index],
              ),
            ),
        itemCount: kcolors.length,
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
