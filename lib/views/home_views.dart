import 'package:famliciousapp/views/chat_view.dart';
import 'package:famliciousapp/views/favorite_view.dart';
import 'package:famliciousapp/views/profile_view.dart';
import 'package:famliciousapp/views/timeline_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class HomeView extends StatefulWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index:currentIndex ,
        children: [
          timelineview(),
          Chatview(),
          favoriteview(),
          Profileview(),
        ],
      ),
    bottomNavigationBar: BottomNavigationBar(
      onTap: (index)=>setState(() {
        currentIndex=index;
      }),
      currentIndex: currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(size: 40),
      items: [
        BottomNavigationBarItem(
          icon: Icon(UniconsSolid.clock_three),label: "Tasks"),
        BottomNavigationBarItem(
          icon: Icon(UniconsSolid.comment_dots),label: "Chats"),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),label: "Favorites"),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person_fill),label: "Profile"),
      ],
    )
      
    );
  }
}