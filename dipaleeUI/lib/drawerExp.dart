import 'package:flutter/material.dart';

class DrawerExp extends StatefulWidget {
  const DrawerExp({super.key});

  @override
  State<DrawerExp> createState() => _DrawerExpState();
}

class _DrawerExpState extends State<DrawerExp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Drawer Demo"
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white60,
        width: MediaQuery.of(context).size.width*0.6,
        child: Column(
          children: [
            Text("Home Page"),
            CircleAvatar(child: Column(
              children: [
                Icon(Icons.home),
              ],
            ),),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Dipalee"),
              trailing: Icon(Icons.chevron_right),
              onTap: (){
                print("Profile Clicked");
              },
            ),
            ListTile(
              leading: Icon(Icons.document_scanner ),
              title: Text("Document"),
              trailing: Icon(Icons.document_scanner),
              onTap: (){
                print("Document checked");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              trailing: Icon(Icons.settings),
              onTap: (){
                print("setting opened");
              },
            ),
            ListTile(
              leading: Icon(Icons.perm_device_information),
              title: Text("Information"),
              trailing: Icon(Icons.perm_device_information),
              onTap: (){
                print("information viewed");
              },
            ),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text("folder"),
              trailing: Icon(Icons.folder),
              onTap: (){
                print("information viewed");
              },
            ),
          ],
        ),
      ),
    );
  }
}
