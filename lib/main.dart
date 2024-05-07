import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AppDrawer(),
  ));
}

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Takeo"),
              accountEmail: Text("teste@email.com"),
              currentAccountPicture: CircleAvatar(
                child: Text("Teste"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha conta"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Meus pedidos"),
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("Voltar"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
