import 'package:flutter/material.dart';
import 'package:notes/models/note/note.dart';
import 'package:notes/screens/note_screen.dart';

class NoteCard extends StatelessWidget {
  final Note note;
  const NoteCard({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: note.color,
      margin: EdgeInsets.zero,
      elevation: .3,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                note.title.length <= 80
                    ? note.title
                    : '${note.title.substring(0, 80)} ...',
                style: const TextStyle().copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Text(
              note.subtitle.length <= 180
                  ? note.subtitle
                  : '${note.subtitle.substring(0, 180)} ...',
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NoteScreen(
                note: note,
              ),
            ),
          );
        },
      ),
    );
  }
}
