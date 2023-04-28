import 'package:flutter/material.dart';
import 'package:flutter_initial_formulario/src/screens/home_page.dart';
import 'package:flutter_initial_formulario/src/screens/login_page.dart';
import 'package:flutter_initial_formulario/src/screens/register_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.cyan.shade200,
          brightness: Brightness.light),
      title: 'Material App',
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Material App Bar'),
        // ),
        body: HomePage(),
      ),
      // initialRoute: '/',

      // onGenerateRoute: (RouteSettings settings) {
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) {
      //       switch (settings.name) {
      //         case '/':
      //           return const LoginPage();
      //         case '/home':
      //           // dynamic userLoggged = settings.arguments;
      //           return const HomePage();
      //         case '/register':
      //           return const RegisterPage();
      //       }
      //     },
      //   );
      // },
    );
  }
}

class testGestureDetector extends StatelessWidget {
  const testGestureDetector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Text('Hello World'),
      onTap: () {
        print('onTap');
      },
      onLongPress: () {
        print('onLongPress');
      },
      onDoubleTap: () {
        print('onDoubleTap');
      },
      onSecondaryTap: () {
        print('onSecundaryTap');
      },
      onTertiaryLongPress: () {
        print('onTertiaryLongPress');
      },
    );
  }
}
