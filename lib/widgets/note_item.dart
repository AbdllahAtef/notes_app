import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_view.dart';

class NoteItem extends StatelessWidget {
   const NoteItem({super.key, required this.note});
 final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EditView()),
        );
      },
      child: Container(
        padding:  const EdgeInsets.only(top: 24.0, left: 16.0, bottom: 24),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(color: Colors.black, fontSize: 26),
              ),

              subtitle:  Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                child: Text(
                  note.subtitle,
                  style: const TextStyle(color: Colors.black45, fontSize: 18),
                ),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.black, size: 34),
                onPressed: () {},
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 170),
              child: Text(
                note.createdAt,
                style: const TextStyle(color: Colors.black45, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
