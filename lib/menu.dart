import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'settings.dart';
import 'constant.dart';

// Menu layout + animation
class menu extends StatelessWidget {
  const menu({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Our logo 
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                const Text(
                  'Hifz Al-bayan',
                  style: TextStyle(height: 5, fontSize: 20), 
                ),
              ],
            ),
          ),
          // Settings option
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text(
              'Settings',
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Settings()));
            },
          ),
        ],
      ),
    );
  }
}


