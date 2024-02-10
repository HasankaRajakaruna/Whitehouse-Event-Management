import 'package:flutter/material.dart';
import 'package:whitehouse/screen/EventScreen.dart';
import 'package:whitehouse/screen/HomeScreen.dart';
import 'package:whitehouse/screen/MoneyScreen.dart';
import 'package:whitehouse/screen/StatsScreen.dart';
import 'package:whitehouse/screen/homepage.dart';
import 'package:whitehouse/screen/profile.dart';
import 'package:whitehouse/screen/setting.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Drawer(
      child: Material(
        color: const Color.fromRGBO(50, 55, 205, 1),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            Container(
              height: screenHeight*0.1,
            ),
            const SizedBox(height: 16,),
            buildMenuItem(
              text: 'Home',
              icon: Icons.home,
              onClicked: ()=>selectedItem(context,0),
            ),
            const SizedBox(height: 16,),
            buildMenuItem(
              text: 'Balance',
              icon: Icons.money,
              onClicked: ()=>selectedItem(context,1),
            ),
            const SizedBox(height: 16,),
            buildMenuItem(
              text: 'Event',
              icon: Icons.event_note,
              onClicked: ()=>selectedItem(context,2),
            ),
            const SizedBox(height: 16,),
            buildMenuItem(
              text: 'Status',
              icon: Icons.info,
              onClicked: ()=>selectedItem(context,3),
            ),
            const SizedBox(height: 16,),
            Divider(
              color: Colors.white,
              thickness: 2.0,
              height: 3.0,
            ),
            const SizedBox(height: 24,),
            buildMenuItem(
              text: 'Profile',
              icon: Icons.people,
              onClicked: ()=>selectedItem(context,4),
            ),
            const SizedBox(height: 16,),
            buildMenuItem(
              text: 'Setting',
              icon: Icons.settings,
              onClicked: ()=>selectedItem(context,5),
            ),
            const SizedBox(height: 16,),
            buildMenuItem(
              text: 'Logout',
              icon: Icons.logout,
              onClicked: ()=>selectedItem(context,6),
            ),
          ],
        ),
      ),
    );
  }

  buildMenuItem({String text,IconData icon,VoidCallback onClicked}) {
    const color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon,color: color,size: 28,),
      title: Text(text,style: TextStyle(color: color,fontSize: 18),),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch(index){
      case 0:
        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>HomeScreen()));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>MoneyScreen()));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>EventScreen()));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>StatsScreen()));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Profile()));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Setting()));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Setting()));
        break;
    }
  }
}

