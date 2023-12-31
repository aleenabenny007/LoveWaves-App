import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DiaryEntry {
  String title;
  String description = 'New Entry';
  DateTime date;

  DiaryEntry(this.title, this.description, this.date);
}

class DiaryPage extends StatefulWidget {
  @override
  _DiaryPageState createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DiaryPage> {
  List<DiaryEntry> diaryEntries = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Diary",
        ),
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarHeight: 60,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        // backgroundColor: const Color.fromARGB(255, 212, 113, 146),
      ),
      body: ListView.builder(
        itemCount: diaryEntries.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(diaryEntries[index].title),
                subtitle: Text(_formatDate(diaryEntries[index].date)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        _showDeleteConfirmation(context, index);
                      },
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DiaryEntryDetailPage(diaryEntry: diaryEntries[index]),
                    ),
                  );
                },
              ),
              Divider(),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          DiaryEntry? newEntry = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddDiaryEntryPage(),
            ),
          );

          if (newEntry != null) {
            setState(() {
              diaryEntries.add(newEntry);
            });
          }
        },
        backgroundColor: Color.fromARGB(255, 233, 180, 186),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showDeleteConfirmation(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Entry'),
          content: Text('Are you sure you want to delete this entry?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _deleteEntry(context, index);
              },
              child: Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  void _deleteEntry(BuildContext context, int index) {
    setState(() {
      // Remove the entry from the list
      diaryEntries.removeAt(index);
    });
    Navigator.of(context).pop(); // Close the confirmation dialog
  }

  String _formatDate(DateTime date) {
    return DateFormat('dd MMM yyyy hh:mm a').format(date);
  }
}

class AddDiaryEntryPage extends StatefulWidget {
  @override
  _AddDiaryEntryPageState createState() => _AddDiaryEntryPageState();
}

class _AddDiaryEntryPageState extends State<AddDiaryEntryPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Handle the back button press
        Navigator.pop(context, null); // Cancel entry
        return false; // Returning true allows the back button press
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Diary Entry'),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true, // Hide the back button
          actions: [
            TextButton(
              onPressed: () {
                _addDiaryEntry(context);
              },
              child: Icon(
                Icons.check,
                size: 30,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: descriptionController,
                keyboardType: TextInputType.multiline,
                maxLines: 100,
                // minLines: null,
                // expands: true,
                decoration: InputDecoration(hintText: 'Description'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _addDiaryEntry(BuildContext context) {
    String title = titleController.text;
    String description = descriptionController.text;
    DateTime date = DateTime.now();

    DiaryEntry newEntry = DiaryEntry(title, description, date);

    Navigator.pop(context, newEntry);
  }
}

class DiaryEntryDetailPage extends StatelessWidget {
  final DiaryEntry diaryEntry;

  DiaryEntryDetailPage({required this.diaryEntry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(diaryEntry.title),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _formatDate(diaryEntry.date),
            ),
            Divider(),
            const SizedBox(height: 8),
            Text('\n\t\t\t\t\t\t${diaryEntry.description}'),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return DateFormat('dd MMM yyyy hh:mm a').format(date);
  }
}
