import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pregnancy_app/screen_widgets/app_drawer.dart';
import 'package:pregnancy_app/features/remainders/alarms_remainders.dart';
import 'package:pregnancy_app/features/diary/diary_page.dart';
import 'package:pregnancy_app/features/entertainment/learn_entertain.dart';
import 'package:pregnancy_app/features/music/music.dart';
import 'package:pregnancy_app/features/photo_album/photo_album_main.dart';
import 'package:pregnancy_app/screen_widgets/popup.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "LoveWaves",
          style: TextStyle(
            color: Color.fromARGB(255, 29, 28, 28),
          ),
        ),
        
      ),
      drawer: AppDrawer(),
      //body of Home Page Starts here...
      body: ListView(
        children: [
          Container(
            height: 220,
            child: CarouselSlider(
              items: const [
                ImageSlider(imgUrl: 'assets/sliderImages/img3.png'),
                ImageSlider(imgUrl: 'assets/sliderImages/img4.png'),
                ImageSlider(imgUrl: 'assets/sliderImages/img5.png'),
                ImageSlider(imgUrl: 'assets/sliderImages/img2.jpg'),
              ],
              options: CarouselOptions(
                height: 400.0,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                aspectRatio: 16 / 9,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 1.0,
              ),
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(left: 2, right: 2),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 245, 193, 199),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: CarouselSlider(
              items: const [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Talk with your baby and feel each step of his/her growth',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Get ready to welcome your baby, both mentally and physically ',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Help your partner to build a strong relationship with baby from when he/she is inside you',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 100.0,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 1.0,
              ),
            ),
          ),
          const SizedBox(height: 5),
          // Story cards starts here..
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Function to be called when the card is tapped
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){return DiaryPage();}));
                      },
                      child: const StoryCard(
                        storyCardText: "Something Special happened! Save it with us",
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Function to be called when the card is tapped
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){return Remainders();}));
                      },
                      child: const StoryCard(
                        storyCardText: "Forgetting to do even important things? We'll help you",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Function to be called when the card is tapped
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){return PhotoAlbum();}));
                      },
                      child: const StoryCard(
                        storyCardText: "Save your precious memories with us..",
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Function to be called when the card is tapped
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){return PopUp();}));
                      },
                      child: const StoryCard(
                        storyCardText: "Share your feelings with your hubby",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Function to be called when the card is tapped
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){return Music();}));
                      },
                      child: const StoryCard(
                        storyCardText: "Wanna have some music? then click here",
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Function to be called when the card is tapped
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){return LearnAndEntertain();}));
                      },
                      child: const StoryCard(
                        storyCardText: "Feeling bored? then just follow us",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//class for Custom Story Cards
// ...........................
class StoryCard extends StatelessWidget {
  final String storyCardText;

  const StoryCard({
    super.key,
    required this.storyCardText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 245, 193, 199),
          borderRadius: BorderRadius.circular(10.0),
        ),
        width: 160,
        height: 160,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              storyCardText,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

//class for Custom Image Sliders
//..............................
class ImageSlider extends StatelessWidget {
  final String imgUrl;
  const ImageSlider({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(imgUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
