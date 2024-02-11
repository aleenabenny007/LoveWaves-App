import 'package:flutter/material.dart';
import 'package:lovewaves_app/src/constants/colors.dart';



class HealthScreen extends StatefulWidget {
  const HealthScreen({Key? key}) : super(key: key);

  @override
  _HealthScreenState createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
  // The current value of the dropdown menu
  String dropdownValue = 'All';

  // The list of items for the dropdown menu
  List<String> categories = [
    'All',
    'Health issues',
    'Body Changes',
    'Mood swings',
    'Sex during pregnany',
    'Nutrition',
  ];

  // The list of questions to display
  List<String> questions = [
    'Why am I having too much hairfall?',
    'Which vegetables are good for pregnancy?',
    'Baby\'s brain development during pregnancy',
    'Are there any foods I should avoid during pregnancy?',
    'How can I improve my mental health?',
    'why do i have a color change in my white discharge?',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // The dropdown menu widget
              Container(
                width: double.infinity,
                color: lightGrey,
                child: Center(
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Colors.black),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: categories
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              // A list view widget to display the questions
              Expanded(
                child: ListView.builder(
                  itemCount: questions.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          // A question mark icon
                          const Icon(
                            Icons.help_outline,
                            color: Colors.grey,
                            size: 32.0,
                          ),
                          // A horizontal spacer
                          const SizedBox(width: 16.0),
                          // The text of the question
                          Expanded(
                            child: Text(
                              questions[index],
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}