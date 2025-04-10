import 'package:flutter/material.dart' ;
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
        ],),
      drawer: AppDrawer(),
      body: Center(
        // child: Text('Home Page', style: TextStyle(fontSize: 24)),
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
            Navigator.of(ctx).pop(); // Close dialog
          },
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            // Navigator.of(ctx).pop(); // Close dialog
            // // Add your logout logic here
            // Navigator.of(context).pushReplacementNamed('/Login'); // Example: navigate to login
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => Login()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow, // Logout button color
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
        title: Text('Drawer Example'),
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
            // height: 80,
            // width: 100,
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
              Navigator.pushReplacementNamed(context, '/dashboard');
            },
          ),
          ListTile(
            leading: Icon(Icons.music_note),
            title: Text('Artist'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/artist');
            },
          ),
          ListTile(
            leading: Icon(Icons.manage_accounts),
            title: Text('EventManager'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/eventManager');
            },
          ),
          ListTile(
            leading: Icon(Icons.library_music),
            title: Text('Genres'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/genres');
            },
          ),
          ListTile(
            leading: Icon(Icons.widgets),
            title: Text('Categories'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/categories');
            },
          ),
          ListTile(
            leading: Icon(Icons.style),
            title: Text('EventType'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/eventType');
            },
          ),
          ListTile(
            leading: Icon(Icons.place),
            title: Text('Locations'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/locations');
            },
          ),
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
