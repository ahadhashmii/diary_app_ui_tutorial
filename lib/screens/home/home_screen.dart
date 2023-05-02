import 'package:diary_app_ui_tutorial/screens/home/widgets/item_note.dart';
import 'package:flutter/material.dart';

import '../note/note_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Diary', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: const [
          ItemNote(color: Colors.green),
          ItemNote(color: Colors.red),
          ItemNote(color: Colors.blue),
          ItemNote(color: Colors.teal),
          ItemNote(color: Colors.orange),
          ItemNote(color: Colors.deepOrange),
          ItemNote(color: Colors.indigo),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => const NoteScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
