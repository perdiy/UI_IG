import 'package:flutter/material.dart';

import '../tabs/feed_views.dart';
import '../tabs/reels_views.dart';
import '../tabs/tagges_views.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // tabs
  final List<Widget> tabs = const [
    // feed tabs
    Tab(
      icon: Icon(
        Icons.image,
        color: Colors.grey,
      ),
    ),
    // reels tab
    Tab(
      icon: Icon(
        Icons.video_collection,
        color: Colors.grey,
      ),
    ),
    // tagged tab
    Tab(
      icon: Icon(
        Icons.bookmark,
        color: Colors.grey,
      ),
    ),
  ];

  // tab bar views
  final List<Widget> tabBarViews = [
    // feed view
    FeedView(),

    // reels views
    ReelsView(),
    // taaged views
    TaggedView(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: ListView(
          children: [
            const SizedBox(height: 10),
            // profile details
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // following
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '512',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Following',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                // profile pic
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),
                ),
                // followers
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('200k',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(height: 5),
                    Text(
                      'Followers',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            // name
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Perdi Yansyah",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(" | "),
                Text(
                  "Mobile Developer",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // bio
            Text(
              'UI Designer * Programmer',
              textAlign: TextAlign.center,
              style: TextStyle(),
            ),
            const SizedBox(height: 5),
            // link
            Text(
              'Youtube.com/Perdiy',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue[500], fontWeight: FontWeight.bold),
            ),
            // buttons
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  // edit profile
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text('Edit Profile'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  //contact
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Contact',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // tab bar
            TabBar(
              tabs: tabs,
            ),
            // tab bar view
            SizedBox(height: 1000, child: TabBarView(children: tabBarViews))
          ],
        ),
      ),
    );
  }
}
