import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lovewaves_app/src/constants/colors.dart';

class DiaryEntry {
  String title;
  String description = 'New Entry';
  DateTime date;

  DiaryEntry(this.title, this.description, this.date);
}

class DiaryPage extends StatefulWidget {
  const DiaryPage({super.key});

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
          style: TextStyle(fontWeight: FontWeight.bold,),
        ),
        
        automaticallyImplyLeading: false,
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarHeight: 60,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        
      ),
      body: 
      Column(
        children:[ 
          Container(
            margin: const EdgeInsets.all(20),
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('assets/images/diary.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
            itemCount: diaryEntries.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(diaryEntries[index].title),
                      subtitle: Text(_formatDate(diaryEntries[index].date)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.delete),
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
                  ),
                  const Divider(),
                ],
              );
            },
                    ),
          ),],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          DiaryEntry? newEntry = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddDiaryEntryPage(),
            ),
          );

          if (newEntry != null) {
            setState(() {
              diaryEntries.add(newEntry);
            });
          }
        },
        backgroundColor: appPrimaryColor,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showDeleteConfirmation(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Entry'),
          content: const Text('Are you sure you want to delete this entry?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Cancel',style: TextStyle(color: appPrimaryColor)),
            ),
            TextButton(
              onPressed: () {
                _deleteEntry(context, index);
              },
              child: const Text('Delete',style: TextStyle(color: appPrimaryColor)),
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
  const AddDiaryEntryPage({super.key});

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
          title: const Text('New Entry'),
          leading: IconButton(icon: const Icon(Icons.arrow_back_ios),onPressed: () {
            Navigator.of(context).pop();
          },),
          backgroundColor: Colors.white,
          actions: [
            TextButton(
              onPressed: () {
                _addDiaryEntry(context);
              },
              child: const Icon(
                Icons.check,
                size: 30,
                color: Colors.black,
              ),
            ),
            const SizedBox(
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
                decoration: const InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: descriptionController,
                keyboardType: TextInputType.multiline,
                maxLines: 100,
                // minLines: null,
                // expands: true,
                decoration: const InputDecoration(hintText: 'Description'),
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

  const DiaryEntryDetailPage({super.key, required this.diaryEntry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(diaryEntry.title),
        backgroundColor: Colors.white,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios),onPressed: () {
            Navigator.of(context).pop();
          },),
          actions: [
             Text(
              _formatDate(diaryEntry.date),
            ),
            const SizedBox(width: 10),
          ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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