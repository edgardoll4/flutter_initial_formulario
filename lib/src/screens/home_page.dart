import 'package:flutter/material.dart';
import 'package:flutter_initial_formulario/src/components/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      drawer: MyDrawer(),
      body: Center(
          child: Container(
        child: Text('hoolaaa!!!!'),
      )),
    );
  }
}
