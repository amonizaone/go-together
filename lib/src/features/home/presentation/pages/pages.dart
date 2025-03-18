import 'package:flutter/material.dart';
import 'package:gotogether/src/core/layouts/nav_buttom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
      bottomNavigationBar: NavButtomBar(),
    );
  }
}
