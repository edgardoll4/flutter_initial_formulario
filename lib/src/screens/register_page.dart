import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_initial_formulario/src/components/image_picker_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _loading = false;
  bool showPassword = false;
  late File imageFile = File('/assets/images/logo.png');
  @override
  Widget build(BuildContext context) {
    final colorsTheme = Theme.of(context).colorScheme;

    final List<Color> colorsGradientBackground = [
      Colors.cyan.shade300,
      Colors.cyan.shade800,
    ];
    final List genrer = ['Male', 'Female'];
    final card = SingleChildScrollView(
      child: Card(
        color: Color.fromARGB(50, 53, 95, 91),
        shadowColor: colorsTheme.primary,
        margin:
            const EdgeInsets.only(left: 20, right: 20, top: 260, bottom: 20),
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'User',
                  labelStyle: TextStyle(color: Colors.white),
                ),
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        icon: Icon(
                          showPassword
                              ? Icons.visibility
                              : Icons
                                  .visibility_off, // cambia el icono que indica si esta visible o no el pass
                          color: Colors.white,
                        ))),
                style: TextStyle(color: Colors.white),
                obscureText:
                    !showPassword, // para que oculte la pass que se escribe
              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Phone',
                    labelStyle: TextStyle(color: Colors.white)),
                style: TextStyle(color: Colors.white),
                obscureText: true,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Genero',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 2,
                    backgroundColor: colorsTheme.primaryContainer),
                onPressed: () {
                  _register(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Register'),
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
            ],
          ),
        ),
      ),
    );
    return Scaffold(
        body: Stack(
      children: [
        // Container(
        //     child: ImagePickerWidget(
        //   imageFile: imageFile,
        //   onImageSelected: (File file) {
        //     setState(() {
        //       // imageFile = file;
        //     });
        //   },
        // )
        // ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: 60,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: colorsGradientBackground),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/DarkRainyDay.jpg',
              ),
              // image: const NetworkImage(
              //   'https://wallpapercave.com/dwp1x/wp2967435.jpg',
              // ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.cyan.withOpacity(0.4), BlendMode.dstATop),
            ),
          ),
          child: Image.asset(
            "assets/images/logo.png",
            color: Color.fromARGB(255, 255, 255, 255),
            height: 200,
          ),
          // height: 200,
        ),
        SizedBox(
            height: kToolbarHeight + 25,
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              iconTheme: IconThemeData(color: Colors.white),
            )),
        Center(
          child: Transform.translate(
            offset: const Offset(0, -20),
            child: card,
          ),
        )
      ],
    ));
  }

  void _register(BuildContext context) {}
}
