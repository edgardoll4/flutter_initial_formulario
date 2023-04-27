import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    final colorsTheme = Theme.of(context).colorScheme;

    final List<Color> colorsGradientBackground = [
      Colors.cyan.shade300,
      Colors.cyan.shade800,
    ];
    final card = Card(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 260, bottom: 20),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'User'),
            ),
            const SizedBox(height: 40),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 2, backgroundColor: colorsTheme.primaryContainer),
              onPressed: () {
                _login(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Login'),
                  if (_loading)
                    Container(
                      height: 20,
                      width: 20,
                      margin: const EdgeInsets.only(left: 20),
                      child: const CircularProgressIndicator(),
                    )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Are you not registered?'),
                TextButton(
                    onPressed: () {
                      _showRegister();
                    },
                    child: const Text('Register'))
              ],
            )
          ],
        ),
      ),
    );
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: 60,
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: colorsGradientBackground)),
          child: Image.asset(
            "assets/images/logo.png",
            color: const Color(0xAAFFFFFF),
            height: 200,
          ),
          // height: 200,
        ),
        Transform.translate(
          offset: const Offset(0, -20),
          child: Center(
            child: SingleChildScrollView(
              child: card,
            ),
          ),
        )
      ],
    ));
  }

  void _login(BuildContext context) {
    if (!_loading) {
      setState(() {
        _loading = true;
      });
    }
  }

  void _showRegister() {
    Navigator.of(context).pushNamed('/register');
  }
}
