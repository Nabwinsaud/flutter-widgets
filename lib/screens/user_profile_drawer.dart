import 'package:flutter/material.dart';

class UserProfileDrawer extends StatelessWidget {
  const UserProfileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile drawer'),
      ),
      body: const Center(
        child: Text(
          'User Profile drawer',
          style: TextStyle(fontSize: 20),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // shrinkWrap: true,
          // padding: const EdgeInsets.all(3.0),
          children: const <Widget>[
            // DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //     image: DecorationImage(
            //       image: NetworkImage(''),
            //     ),
            //   ),
            //   child: Text(
            //     'User drawer',
            //     style: TextStyle(fontSize: 14.0, wordSpacing: 4),
            //     textAlign: TextAlign.center,
            //   ),
            // ),

            UserAccountsDrawerHeader(
              accountName: Text('John doe'),
              accountEmail: Text('john@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'data:image/jpeg;base64,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',
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2020/01/18/18/20/chest-4776026__340.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'data:image/jpeg;base64,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'),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'data:image/jpeg;base64,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'),
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.verified),
              title: Text(
                'User 1',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.whatsapp),
              title: Text(
                'User 2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'User 3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.supervisor_account),
              title: Text(
                'User 4',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text(
                'User 5',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.supervisor_account),
              title: Text(
                'User 6',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_tree_outlined),
              title: Text(
                'User 7',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.green,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "user"),
          // BottomNavigationBarItem(icon: Icon(Icons.login), label: "login"),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.account_balance_wallet),
          //     label: "balance",
          //     tooltip: "account balance")
        ],
        onTap: (int itemIndex) {},
      ),
    );
  }
}
