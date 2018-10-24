import 'package:flutter/material.dart';
import '../products/product_manager.dart';
import './products_admin.dart';

class DiscoveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Main Menu"),
            ),
            ListTile(
              title: Text("Manage your Products"),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProductAdminPage()));
              }, // onTap
            ), // ListTile
          ], // Column Children Widget
        ), // Column
      ), // Drawer
      appBar: AppBar(
        title: Text("GroupieTech"),
      ), //App Bar
      // Body pulls product manager.
      body: ProductManager(), // Column
    ); // Scaffold
  }
}