import 'package:flutter/material.dart';
import 'package:ndamar/pages/front-office/auth/login_screen.dart';
import 'package:ndamar/widgets/login_register_button.dart';

import '../../../configs/color_config.dart';
import '../../../widgets/Text_field_widget.dart';
import '../welcome_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Align(
            alignment: Alignment.center,
            child: Container(
              // padding: EdgeInsets.all(20),
              // height: 300,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.blue, Colors.orange],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                  ),
                  color: ColorConf.cunstomBlue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    'inscription'.toUpperCase(),
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54),
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: TextFieldWidget(
                      prefixIcon: Icon(
                        Icons.person,
                        size: 30,
                      ),
                      text: "Prénom *",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: TextFieldWidget(
                      prefixIcon: Icon(
                        Icons.person,
                        size: 30,
                      ),
                      text: "Nom *",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: TextFieldWidget(
                      prefixIcon: Icon(
                        Icons.person,
                        size: 30,
                      ),
                      text: "Nom d'utilisateur *",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: TextFieldWidget(
                      suffixIcon: Icon(Icons.remove_red_eye),
                      prefixIcon: Icon(
                        Icons.key,
                        size: 30,
                      ),
                      obscureText: true,
                      text: "Mot de passe *",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width / 5,
                            height: 60,
                            decoration: BoxDecoration(
                                color: ColorConf.cunstomBlue,
                                borderRadius:
                                const BorderRadius.all(Radius.circular(5.0))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  color: ColorConf.cunstomOrange,
                                  "icons/enter.png",
                                  fit: BoxFit.cover,
                                  width: 30,
                                  height: 30,
                                ),

                                const SizedBox(
                                  width: 10,
                                ),

                              ],
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(

                        child: Container(
                          width: MediaQuery.of(context).size.width / 5,
                          height: 60,
                          decoration: const BoxDecoration(
                            color: Colors.black45,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              color: Colors.white,
                              "icons/register.png",
                              fit: BoxFit.cover,
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomeScreen(),),);
                  }, child:  Text("Aller à accueil",style: TextStyle(color: Colors.blue[900], fontSize: 15, fontStyle: FontStyle.italic,),))

                ],
              ),
            )),
      ),
    );
  }
}
