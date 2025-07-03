import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24.0, left: 16.0, bottom: 24),
      decoration: BoxDecoration(
        color: Colors.orangeAccent.shade100,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),

            subtitle: const Padding(
              padding: EdgeInsets.only(top: 16.0, bottom: 16),
              child: Text(
                'Build apps faster with Flutter Tips and Tricks.',
                style: TextStyle(color: Colors.black45, fontSize: 18),
              ),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.black, size: 34),
              onPressed: () {},
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 170),
            child: Text(
              'may 23, 2023',
              style: TextStyle(color: Colors.black45, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
