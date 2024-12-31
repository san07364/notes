import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/controllers/notes_controller.dart';
import 'package:notes/utils/utils.dart';

import '../models/note/note.dart';

class NoteScreen extends StatefulWidget {
  final Note? note;
  const NoteScreen({
    super.key,
    this.note,
  });

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  String? title;
  String? subtitle;
  Color? color;
  late final NotesCubit _controller;

  @override
  void initState() {
    _controller = context.read<NotesCubit>();
    if (widget.note != null) {
      title = widget.note?.title;
      subtitle = widget.note?.subtitle;
      color = widget.note?.color;
    }
    color ??= Utils.getRandomLightColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          return;
        }
        _handlePop();
        if (context.mounted) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        backgroundColor: color,
        appBar: AppBar(
          backgroundColor: color,
          actions: [
            if (widget.note != null)
              IconButton(
                onPressed: () {
                  _controller.deleteNote(note: widget.note!);
                  Navigator.pop(context);
                },
                icon: Icon(Icons.delete_outline),
              )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              TextFormField(
                initialValue: title,
                maxLength: 20,
                decoration: InputDecoration(
                  hintText: "Title",
                ),
                onChanged: (value) {
                  title = value;
                },
              ),
              TextFormField(
                initialValue: subtitle,
                maxLines: null,
                maxLength: 200,
                decoration: InputDecoration(
                  hintText: "Enter description ....",
                ),
                onChanged: (value) {
                  subtitle = value;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  _handlePop() {
    if ((title ?? '').trim().isNotEmpty && (subtitle ?? '').trim().isNotEmpty) {
      if (widget.note == null) {
        _controller.addNote(
          note: Note(
            id: Utils.generateUuid(),
            title: title!,
            subtitle: subtitle!,
            color: color!,
          ),
        );
      } else {
        _controller.editNote(
          note: widget.note!.copyWith(title: title!, subtitle: subtitle!),
        );
      }
    }
  }
}
