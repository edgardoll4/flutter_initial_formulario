import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                // image: NetworkImage(
                //     'https://png.pngtree.com/thumb_back/fh260/background/20200621/pngtree-abstract-modern-neon-frame-background-image_339537.jpg'),
                image: AssetImage('assets/images/bannerDrawer.jpg'),
                filterQuality: FilterQuality.high,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.35), BlendMode.colorBurn),
                fit: BoxFit.cover,
              ),
            ),
            accountName: Text('accountName'),
            accountEmail: Text('accountEmail'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/marcoUserDrawe.jpg'),
            ),
            onDetailsPressed: () {},
          ),
          ListTile(
            title: Text(
              'Recetas',
              style: TextStyle(fontSize: 22),
            ),
            leading: Icon(
              Icons.book,
              color: Colors.green,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Favoritos',
              style: TextStyle(fontSize: 22),
            ),
            leading: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Recetas',
              style: TextStyle(fontSize: 22),
            ),
            leading: Icon(
              Icons.power_settings_new,
              color: Colors.cyan,
            ),
            onTap: () {
              // Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
