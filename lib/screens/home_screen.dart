import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notes/controllers/notes_controller.dart';
import 'package:notes/controllers/notes_state.dart';
import 'package:notes/screens/components/note_card.dart';
import 'package:notes/screens/note_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NoteScreen(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      body: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
          if (state.notesList.isEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(),
                Icon(Icons.feedback_outlined),
                SizedBox(
                  height: 10,
                ),
                Text("Click + icon to create a note")
              ],
            );
          }
          return MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            padding: EdgeInsets.all(16),
            itemCount: state.notesList.length,
            itemBuilder: (_, index) {
              var itemNote = state.notesList[index];
              return NoteCard(
                note: itemNote,
              );
            },
          );
        },
      ),
    );
  }
}
