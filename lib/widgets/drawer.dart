import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final imageurl = "https://avatars.githubusercontent.com/u/12619420?v=4";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            DrawerHeader(
                padding: EdgeInsets.zero,
                // ignore: prefer_const_constructors
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Utkarsh"),
                  accountEmail: Text("umadaan@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
                  ),
                )),
            // ignore: prefer_const_constructors
            ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.5,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.5,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Mail",
                textScaleFactor: 1.5,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
