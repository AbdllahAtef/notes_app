import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_list.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
      child: Column(
        children: [
          CustomAppBar(
            icon: Icons.check,
            title: 'Edit Note',
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchallnotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 32),
          CustomTextField(
            hint: widget.note.title,
            maxLines: 1,
            onchanged: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hint: widget.note.subtitle,
            maxLines: 5,
            onchanged: (value) {
              content = value;
            },
          ),
          const SizedBox(height: 32),
          EditColorList(note:  widget.note,)
        ],
      ),
    );
  }
}
class EditColorList extends StatefulWidget {
  const EditColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditColorList> createState() => _EditColorListState();
}

class _EditColorListState extends State<EditColorList> {
  late int currentindex ;


  @override
  void initState() {
    currentindex = kcolors.indexOf(Color(widget.note.color));
    super.initState();
  
    
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 68,
      child: ListView.builder(
        itemBuilder:
            (context, index) => GestureDetector(
              onTap: () {
                currentindex = index;
                widget.note.color = kcolors[index].value;
                setState(() {
                  
                });
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
