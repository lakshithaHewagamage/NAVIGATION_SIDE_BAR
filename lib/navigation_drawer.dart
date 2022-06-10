import 'package:flutter/material.dart';
import 'package:navigation_side_bar/drawer_item.dart';
import 'package:navigation_side_bar/pages/chats.dart';
import 'package:navigation_side_bar/pages/favourites.dart';
import 'package:navigation_side_bar/pages/myAccount.dart';
import 'package:navigation_side_bar/pages/people.dart';
import 'package:navigation_side_bar/pages/settings.dart';

class navigationDrawer extends StatelessWidget {
  const navigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24,0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(height: 40),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              DrawerItem(
                name: "People",
                icon: Icons.people,
                onPressed: () => onItemPressed(context,index :0),
              ),
              const SizedBox(height: 20),
              DrawerItem(
                name: "My Account",
                icon: Icons.account_box_rounded,
                onPressed: () => onItemPressed(context,index :1),
              ),
              const SizedBox(height: 20),
              DrawerItem(
                name: "Chats",
                icon: Icons.message_outlined,
                onPressed: () => onItemPressed(context,index :2),
              ),
              const SizedBox(height: 20),
              DrawerItem(
                name: "Favourites",
                icon: Icons.favorite_outline,
                onPressed: () => onItemPressed(context,index :3),
              ),
              const SizedBox(height: 30),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(height: 30),
              DrawerItem(
                name: "Settings",
                icon: Icons.settings,
                onPressed: () => onItemPressed(context,index :4),
              ),
              const SizedBox(height: 30),
              // DrawerItem(
              //   name: "Logout",
              //   icon: Icons.logout,
              //   onPressed: () => onItemPressed(context,index :5),
              // ),
            ],
          ),
        ),
      ),
    );
  }
  
 void  onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch(index){
      case 0:
        Navigator.push(context, MaterialPageRoute(builder : (context) => const People() ));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder : (context) => const MyAccount() ));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder : (context) => const Chat() ));
        break;
       case 3:
        Navigator.push(context, MaterialPageRoute(builder : (context) => const Favourite() ));
        break;
      case 4:
        Navigator.push(context, MaterialPageRoute(builder : (context) => const Setting() ));
        break;
      // case 5:
      //   Navigator.push(context, MaterialPageRoute(builder : (context) => const People() ));
      //   break;
    }
  }

  Widget headerWidget(){
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          child: Icon(
            Icons.people_alt_rounded,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Person name",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "person@gmail.com",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }
}