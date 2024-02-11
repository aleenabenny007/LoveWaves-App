import 'package:flutter/material.dart';

class PopUp extends StatefulWidget {
  const PopUp({super.key});

  @override
  State<PopUp> createState() => _PopUpState();
}

class _PopUpState extends State<PopUp> {
  final List<IconData> icons = [
    Icons.sentiment_very_dissatisfied,
    Icons.sentiment_dissatisfied,
    Icons.sentiment_neutral,
    Icons.sentiment_satisfied,
    Icons.sentiment_very_satisfied,
  ];

  // A list of colors for the icons
  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.blue,
    Colors.lightGreen,
    Colors.green,
  ];

  final List<String> value = [
    'Depressed',
    'Sad',
    'Neutral',
    'Happy',
    'Very Happy',
  ];

  // A variable to store the index of the selected icon
  int? selectedIndex;

  // A variable to store the selected item
  String? selectedItem;
// A controller to get the text field input
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('How do you feel now?',style: TextStyle(color: Color.fromARGB(255, 3, 63, 112)),),
      backgroundColor: const Color.fromARGB(255, 250, 249, 249),
      contentPadding: EdgeInsets.all(10),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Wrap(
            spacing: 5,
            children: List.generate(
              icons.length,
              (index) {
                return IconButton(
                  color: index == selectedIndex ? colors[index] : Colors.grey,

                  // Change the color based on the selection
                  onPressed: () {
                    // Update the selected index and the UI
                    setState(() {
                      selectedIndex = index;
                      selectedItem = value[index];
                    });
                  },
                  icon: Icon(icons[index]),
                );
              },
            ),
          ),

          // A text field to enter some text
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              labelText: '\t\tWrite it down',
              labelStyle: TextStyle(color: Color.fromARGB(255, 106, 116, 122)),
            ),
          ),
        ],
      ),
      actions: [
        // A button to confirm the input and the selection
        TextButton(
          child: const Text('OK'),
          onPressed: () {
            // Print the values to the console
            print('You entered: ${controller.text}');
            print('You selected: $selectedItem');
            // Pop the dialog and pass the result
            Navigator.pop(
              context,
              'You entered: ${controller.text}\nYou selected: $selectedItem',
            );
          },
        ),
        // A button to cancel the dialog
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            // Pop the dialog without passing any result
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
