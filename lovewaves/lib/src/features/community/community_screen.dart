import 'package:flutter/material.dart';
import 'package:sample_application_flutter/src/constants/colors.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  // The current selected tab
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Community',
          style: TextStyle(
            color: white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: appPrimaryColor,
        actions: [
          // The search icon
          IconButton(
            icon: const Icon(
              Icons.search,
              color: white,
            ),
            onPressed: () {
              // TODO: implement the search functionality
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: white,
            ),
            onPressed: () {
              // TODO: implement the search functionality
            },
          ),
        ],
      ),
      backgroundColor: lightGrey,
      body: Column(
        children: [
          // The tabs for groups and chats
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedTab = 0;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: white,
                          border: Border.all(
                            color: selectedTab == 0 ? black : Colors.white,
                          )),
                      child: const Text(
                        'Groups',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: appPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedTab = 1;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: white,
                          border: Border.all(
                            color: selectedTab == 1 ? black : Colors.white,
                          )),
                      child: const Text(
                        'Chats',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: appPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // The list of groups to display
          if (selectedTab == 0) Groups(),
          if (selectedTab == 1) Chats(),
        ],
      ),
    );
  }
}

class Groups extends StatelessWidget {
  Groups({super.key});
  // The list of groups to display
  final List<String> groups = [
    'Birth Stories',
    'Baby Names',
  ];

  // The list of icons to display for each group
  final List<IconData> icons = [
    Icons.child_care,
    Icons.book,
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: groups.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                // The icon for the group
                CircleAvatar(
                  backgroundColor: lightPink,
                  child: Icon(
                    icons[index],
                    color: Colors.red[900],
                  ),
                ),
                const SizedBox(width: 10),
                // The group name
                Text(groups[index]),
                const Spacer(),
                // The join button for the group
                
                    ElevatedButton(
                        onPressed: () {
                          // TODO: implement the join functionality
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: appPrimaryColor,
                        ),
                        child: const Text('Join'),
                      )
                    
              ],
            ),
          );
        },
      ),
    );
  }
}

// chats starts here
class Chats extends StatelessWidget {
  Chats({Key? key}) : super(key: key);

  // The list of chats to display
  final List<String> chats = [
    'username1',
    'username2',
    'username3',
  ];

  // The list of profile pictures to display for each chat
  final List<String> profilePics = [
    'assets/images/nobg1.png',
    'assets/images/nobg1.png',
    'assets/images/nobg1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                // The profile picture for the chat
                CircleAvatar(
                  backgroundImage: AssetImage(profilePics[index]),
                ),
                const SizedBox(width: 10),
                // The username for the chat
                Text(
                  chats[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
