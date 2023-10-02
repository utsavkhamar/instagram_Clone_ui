import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const InstagramHomePage(),
    );
  }
}

class InstagramHomePage extends StatefulWidget {
  const InstagramHomePage({super.key});

  @override
  State<InstagramHomePage> createState() => _InstagramHomePageState();
}

class _InstagramHomePageState extends State<InstagramHomePage> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    List<BottomNavigationBarItem> bottomNavBarItems = [
      const BottomNavigationBarItem(
        icon: FaIcon(
          FontAwesomeIcons.home,
          color: Colors.black,
        ),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: FaIcon(
          FontAwesomeIcons.search,
          color: Colors.black,
        ),
        label: 'Search',
      ),
      const BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/icons/more.png'),
        color: Colors.black,
        ),
        label: 'Add',
      ),
      const BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(
            'assets/icons/reels.png',
          ),
          color: Colors.black,
        ),
        label: 'Likes',
      ),
      const BottomNavigationBarItem(
        icon: FaIcon(
          FontAwesomeIcons.user,
          color: Colors.black,
        ),
        label: 'Profile',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset(
            'assets/icons/pngegg.png',
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 200,
          ),
          const Icon(Icons.favorite_border),
          const SizedBox(
            width: 20,
          ),
          Image.asset(
            'assets/icons/chat.png',
            height: 20,
            width: 20,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(2),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CircularAvatarWithText(
                            imageURL: 'assets/images/me.jpg',
                            text: 'Your story',
                            width: 65,
                            height: 65,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircularAvatarWithText(
                              imageURL: 'assets/images/indiadp.jpeg',
                              text: 'indiancrickett...',
                              width: 65,
                              height: 65),

                          SizedBox(
                            width: 10,
                          ),
                          CircularAvatarWithText(
                            imageURL: 'assets/images/Aliadp.jpg',
                            text: 'aliaabhatt',
                            width: 65,
                            height: 65,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircularAvatarWithText(
                              imageURL: 'assets/images/natsdp.jpg',
                              text: 'natasastanko..',
                              width: 65,
                              height: 65),
                          SizedBox(
                            width: 10,
                          ),
                          CircularAvatarWithText(
                              imageURL: 'assets/images/kingdp.jpg',
                              text: 'ifeelking',
                              width: 65,
                              height: 65),
                          SizedBox(
                            width: 10,
                          ),
                          CircularAvatarWithText(
                              imageURL: 'assets/images/fossil.jpg',
                              text: 'fossil',
                              width: 65,
                              height: 65),
                          SizedBox(
                            width: 10,
                          ),
                          CircularAvatarWithText(
                              imageURL: 'assets/images/mortal.jpeg',
                              text: 'ig_mortal',
                              width: 65,
                              height: 65),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      )),
                  Divider(
                    color: Colors.grey.shade200,
                  ),
                  const Column(
                    children: [
                      PostView(
                        username: 'indiancricketteam',
                        userAvatarUrl: 'assets/images/indiadp.jpeg',
                        imageUrl: 'assets/images/india.jpg',
                        likes: '10,238,498',
                        comments: 'lovely💗',
                        caption:
                            'R Ashwin replaces injured Axar Patel \n in the 15-member squad ',
                        commentsUserName: 'rohitsharma',
                      ),
                      PostView(
                        username: 'aliaabhatt',
                        userAvatarUrl: 'assets/images/Aliadp.jpg',
                        imageUrl: 'assets/images/alia.jpg',
                        likes: '2,973,829',
                        comments: 'love💖',
                        caption: 'somewhere over the rainbowwwwww',
                        commentsUserName: 'ranvirkapoor',
                      ),
                      PostView(
                        username: 'fossil',
                        userAvatarUrl: 'assets/images/fossil.jpg',
                        imageUrl: 'assets/images/fossil.jpg',
                        likes: '5,967,892',
                        comments: 'Beautiful.⌚',
                        caption:
                            'Fossil Blue GMT was made for every adventure,\n coast to coast. 🌊',
                        commentsUserName: 'viratkholi',
                      ),
                      PostView(
                        username: 'natasastankovic_',
                        userAvatarUrl: 'assets/images/natsdp.jpg',
                        imageUrl: 'assets/images/nats.jpg',
                        likes: '229,650',
                        comments: '♥😍♥',
                        caption: 'bikini behavior 💙☀',
                        commentsUserName: 'hardikpandya93',
                      ),
                      PostView(
                        username: 'ifeelking',
                        userAvatarUrl: 'assets/images/kingdp.jpg',
                        imageUrl: 'assets/images/king.jpg',
                        likes: '134,560',
                        comments: 'comeback??🤣🤣',
                        caption: 'IT\'S TIME ❗ ',
                        commentsUserName: 'yoyohoneysingh',
                      ),
                    ],
                  ),
                ],
              ))),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   items: bottomNavBarItems,
      //   onTap: (index) {},
      // ),
    );
  }
}

class CircularAvatarWithText extends StatelessWidget {
  final String imageURL;
  final String text;
  final double width;
  final double height;

  const CircularAvatarWithText({
    required this.imageURL,
    required this.text,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: width / 2,
          // Make sure the radius is half of the desired width/height
          backgroundColor: Colors.transparent,
          child: ClipOval(
            child: Image.asset(
              imageURL,
              width: width,
              height: height,
              fit: BoxFit.cover, // Adjust the fit based on your needs
            ),
          ),
        ),
        // Adjust the spacing between the avatar and text
        Text(
          text,
          style:
              const TextStyle(fontSize: 10), // Adjust the text style as needed
        ),
      ],
    );
  }
}

class PostView extends StatelessWidget {
  final String username;
  final String userAvatarUrl;
  final String imageUrl;
  final String caption;
  final String likes;
  final String comments;
  final String commentsUserName;

  const PostView(
      {super.key,
      required this.username,
      required this.userAvatarUrl,
      required this.imageUrl,
      required this.caption,
      required this.likes,
      required this.comments,
      required this.commentsUserName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // User Info Section
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width / 30,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(userAvatarUrl),
                ),
                const SizedBox(width: 8),
                Text(username),
              ],
            ),
            Icon(
              Icons.more_vert_rounded,
              color: Colors.black.withAlpha(200),
            ),
          ],
        ),
        const SizedBox(height: 8),
        // Post Image
        Image.asset(imageUrl),
        // Like and Comment Section
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.black.withAlpha(175),
              ),
              const SizedBox(width: 8),
              Image.asset('assets/icons/comments.png',
                  color: Colors.black, height: 20, width: 20),
              const SizedBox(width: 8),
              Image.asset('assets/icons/share.png',
                  color: Colors.black, height: 20, width: 20),
              SizedBox(width: MediaQuery.of(context).size.width - 122),
              Image.asset('assets/icons/save.png',
                  color: Colors.black, height: 20, width: 20)
            ],
          ),
        ),
        // Likes Count
        Text('${likes} likes'),
        // Caption
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            "$username  $caption",
            maxLines: 3, // Limit the caption to 3 lines
            overflow: TextOverflow.ellipsis,
          ),
        ),
        //Comments
        const Text(
          'Comments',
          style: TextStyle(color: Colors.grey),
        ),
        Padding(
          padding: const EdgeInsets.only(),
          child: Text(
            "$commentsUserName  $comments",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
