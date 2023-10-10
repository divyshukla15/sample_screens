

import 'package:flutter/material.dart';
import 'package:flutter_application_2/upload.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'main.dart';
import 'unfollow.dart';


class BottomNavBar extends StatelessWidget{
  final controller =PersistentTabController(initialIndex: 0);
  List<Widget> _buildSceen(){
    return[
      MyHomePage(title: "Divy",),
      Text("data"), 
       UplaodPage(),
      UnfollowScreen(img:'', name: '',),
      Text("data"),
     // Navigator.push(builder: (context)=> UplaodPage());
      
      //Center(child: Text("data")),
      //Text("dtat"),
    ];
  }
  List<PersistentBottomNavBarItem> _buildIcons(){
    return[
      
       PersistentBottomNavBarItem(icon: Icon(Icons.home, size:44
       ,color: Colors.red,),
        title:('Home')),
        PersistentBottomNavBarItem(icon: Icon(Icons.diamond_outlined,
        size:44
       ,color: Colors.red),
        title:('Points')),
        PersistentBottomNavBarItem(icon: Icon(Icons.add_box_rounded,
        size:44
       ,color: Colors.red),
        title:('Upload')),
        PersistentBottomNavBarItem(icon: Icon(Icons.message_sharp,
        size:44
       ,color: Colors.red),
        title:('Inbox'),  
        //inactiveColorPrimary: colors.        
        ),
        PersistentBottomNavBarItem(
        icon: Icon(Icons.person,
        size:44
       ,color: Colors.red),
        title:('You')),
    ];

  }
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context, 
      screens: _buildSceen(),
      items: _buildIcons(),
      navBarStyle: NavBarStyle.style6,
      
      //esign(),
      navBarHeight: 80,
      ); 


  }

}

