import 'package:flutter/material.dart';
import 'package:lovewaves_app/src/constants/colors.dart';

class MusicForMoods extends StatefulWidget {
  const MusicForMoods({Key? key}) : super(key: key);

  @override
  State<MusicForMoods> createState() => _MusicForMoodsState();
}

class _MusicForMoodsState extends State<MusicForMoods> {
  // The list of moods to display
  final List<String> moods = [
    'Angry',
    'Happy',
    'Relaxed',
    'Sad',
  ];

  // The list of images to display for each mood
  final List<String> moodImages = [
    'assets/images/moods/angry.jpg',
    'assets/images/moods/happy.jpg',
    'assets/images/moods/relaxed.jpg',
    'assets/images/moods/sad.jpg',
  ];

  // The list of songs to display
  final List<String> songs = [
    'Call me maybe',
    'Keep driving',
    'Accidently in love',
    'Dog days are over',
  ];

  // The list of icons to display for each song
  final List<IconData> songIcons = [
    Icons.pause,
    Icons.play_arrow,
    Icons.play_arrow,
    Icons.play_arrow,
  ];

  // The current selected mood
  int selectedMood = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDE7F6),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // The large rounded rectangle with the avatar image
            Container(
              margin: EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/moods/music.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
        
            // The section for moods
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: const Text("Moods"),
            ),
        
            // The list of moods to display
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: moods.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedMood = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: selectedMood == index
                                ? black
                                : Colors.transparent),
                        image: DecorationImage(
                          image: AssetImage(moodImages[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          moods[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            
            // The list of songs to display
            Expanded(
              child: ListView.builder(
                itemCount: songs.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        // The icon for the song
                        IconButton(
                          onPressed: () {
                            setState(() {
                              // TODO play and pause function
                            });
                          },
                          icon: Icon(Icons.play_arrow),
                        ),
                        SizedBox(width: 10),
                        // The song title
                        Text(songs[index]),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
