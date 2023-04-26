import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        padding: EdgeInsets.zero,
        color: Colors.transparent,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                child: Image.asset("assets/email.png"),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: const Text("Notifications"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: const Text("Setting"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: const Text("Logout"),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Container(
                          decoration: BoxDecoration(color: Colors.transparent),
                          child: AlertDialog(
                            title: Text("Are you sure"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Cancel")),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyLogin()),
                                      (Route<dynamic> route) => false,
                                    );
                                  },
                                  child: Text("LogOut")),
                            ],
                          ),
                        );
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
