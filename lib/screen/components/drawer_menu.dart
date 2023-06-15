import 'package:create_responsive_admin_flutter/constants/constants.dart';
import 'package:create_responsive_admin_flutter/screen/components/drawer_list_tile.dart';
import 'package:flutter/material.dart';
class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
     child:  ListView(
       children: [
         Container(
           padding: const EdgeInsets.all(appPadding),
           child: Image.asset("assets/images/logoT.png"),
         ),
          DrawerListTile(
         title: 'Dash Board',
         svgSrc: 'assets/icons/Dashboard.svg',
            tap: () {  },

         ),
         DrawerListTile(
           title: 'Blog Post',
           svgSrc: 'assets/icons/BlogPost.svg',
           tap: () {  },

         ),
         DrawerListTile(
           title: 'Message',
           svgSrc: 'assets/icons/Message.svg',
           tap: () {  },

         ),
         const Padding(
             padding: EdgeInsets.symmetric(horizontal: appPadding *2),
           child: Divider(
             color: Colors.grey,
             thickness: 0.2,
           ),
         ),
         DrawerListTile(
           title: 'Statistics',
           svgSrc: 'assets/icons/Statistics.svg',
           tap: () {  },

         ),
         DrawerListTile(
           title: 'Settings',
           svgSrc: 'assets/icons/Setting.svg',
           tap: () {  },

         ),
         DrawerListTile(
           title: 'Logout',
           svgSrc: 'assets/icons/Logout.svg',
           tap: () {  },

         )
       ],
     ),
    );
  }
}
