import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dipesh Ghimire"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text("About Us"),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Dipesh Ghimire"),
              accountEmail: Text("ghimiredipesh5@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.kindpng.com/picc/m/495-4952535_create-digital-profile-icon-blue-user-profile-icon.png"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Log out"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://i.ytimg.com/vi/a19EY3YNStA/maxresdefault.jpg"),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 130,
              left: 20,
              child: Container(
                alignment: Alignment.center,
                color: Colors.white,
                height: 40,
                width: 80,
                child: Text(
                  "Burger",
                  textScaleFactor: 1.5,
                ),
              ),
            ),
            Positioned(
              top: 130,
              right: 20,
              child: Container(
                alignment: Alignment.center,
                color: Colors.white,
                height: 40,
                width: 80,
                child: Text(
                  "10 % off",
                  textScaleFactor: 1.3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
