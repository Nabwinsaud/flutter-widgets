import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer widget'),
      ),
      body: const Center(
        child: Text(
          'Hello drawer widget',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  image: NetworkImage('url'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Title 1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  // fontStyle: FontStyle.italic,
                  wordSpacing: 4,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.verified),
              title: Text(
                'Title 2',
                style: TextStyle(fontWeight: FontWeight.bold, wordSpacing: 4),
              ),
            ),
            ListTile(
              leading: Icon(Icons.whatsapp),
              title: Text(
                'Title 3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
