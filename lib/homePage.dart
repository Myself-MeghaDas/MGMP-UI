import 'package:flutter/material.dart' ;
import 'package:shared_preferences/shared_preferences.dart';
import 'login.dart';
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => _showLogoutDialog(context),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                // border: Border(left:BorderSide(color:Colors.black)),
                color: Colors.orange[50]
              ),
              child: Text("Event", style: TextStyle(fontSize: 18)),
            ),
            // SizedBox(height: 16),
            Container(
              height: 100,
              width: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border(left:BorderSide(color:Colors.black)),
                  color: Colors.orange[50]
              ),
              child: Text("Managers", style: TextStyle(fontSize: 18)),
            ),
            // SizedBox(height: 16),
            Container(
              height: 100,
              width: 120,
              decoration: BoxDecoration(
                  border: Border(left:BorderSide(color:Colors.black)),
                  color: Colors.orange[50]
              ),
              alignment: Alignment.center,
              child: Text("Artists", style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
void _showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text('Logout !'),
      content: Text('Are you sure you want to logout?'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(ctx).pop();
          },
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () async{
            SharedPreferences pref=await SharedPreferences.getInstance();
            await pref.clear();
            Navigator.of(ctx).pop();
            // Navigator.of(context).pushAndRemoveUntil(
            //   MaterialPageRoute(builder: (context)=>Login()),
            //     (route)=>false
            // );
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => Login()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          child: Text('Logout'),
        ),
      ],
    ),
  );
}
class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Home Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class Artists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About')),
      drawer: AppDrawer(),
      body: Center(
        child: Text('About Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class EventManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Settings Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class Genres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Genres')),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Genres Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categories')),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Categories Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Locations')),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Locations Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Events')),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Events Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF0D47A1)),
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: Container(
            alignment: Alignment.center,
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          ),
          ListTile(

            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/Dashboard');
            },
          ),
          SizedBox(height: 15),
          ListTile(
            leading: Icon(Icons.music_note),
            title: Text('Artist'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/artist');
            },
          ),
          SizedBox(height: 15),
          ListTile(
            leading: Icon(Icons.manage_accounts),
            title: Text('EventManager'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/eventManager');
            },
          ),
          SizedBox(height: 15),
          ListTile(
            leading: Icon(Icons.library_music),
            title: Text('Genres'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/genres');
            },
          ),
          SizedBox(height: 15),
          ListTile(
            leading: Icon(Icons.widgets),
            title: Text('Categories'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/Categories');
            },
          ),
          SizedBox(height: 15),
          ListTile(
            leading: Icon(Icons.style),
            title: Text('EventType'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/eventType');
            },
          ),
          SizedBox(height: 15),
          ListTile(
            leading: Icon(Icons.place),
            title: Text('Locations'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/locations');
            },
          ),
          SizedBox(height: 15),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Events'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/events');
            },
          ),
        ],
      ),
    );
  }
}
