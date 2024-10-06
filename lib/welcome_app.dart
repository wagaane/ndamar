import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ndamar/configs/loading_config.dart';
import 'package:ndamar/pages/front-office/welcome_screen.dart';

class WelcomeApp extends StatefulWidget {
  const WelcomeApp({super.key});

  @override
  State<WelcomeApp> createState() => _WelcomeAppState();
}

class _WelcomeAppState extends State<WelcomeApp> {
  @override
  void initState() {
    super.initState();
    _waitAndUpdate();
  }

  bool _isLoading = true;
  // Function that waits for a certain duration and then updates the state
  void _waitAndUpdate() async {
    await Future.delayed(const Duration(seconds: 3)); // Wait for 2 seconds
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              // color: Colors.red.withOpacity(0.3),
              image: DecorationImage(
                  image: AssetImage("assets/car_.jpg"), fit: BoxFit.cover)),
          child: _isLoading
              ? LoadingConfig.loading()
              : Column(
                  children: [
                    const SizedBox(height: 100),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration:
                          BoxDecoration(color: Colors.black.withOpacity(0.3)),
                      child: const Column(
                        children: [
                          Text(
                            "Ndamar",
                            style: TextStyle(
                                fontSize: 45,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          AutoSizeText(
                            'Trouver votre voiture préférer avec un prix abordable !',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 2 + 150,
                    ),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          onPressed: () {
                            Navigator.push<void>(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const WelcomeScreen(),
                              ),
                            );
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Démarrer",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          )),
                    )
                  ],
                ),
        ),

    );
  }
}
