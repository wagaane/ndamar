import 'package:flutter/material.dart';
import 'package:ndamar/pages/front-office/auth/register_screen.dart';
import 'package:ndamar/pages/front-office/welcome_screen.dart';

import '../../../configs/color_config.dart';
import '../../../widgets/Text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  Image.asset("icons/user-authentication.png", width: 70, height: 70, color: Colors.black45,),

                  Center(
                      child: Text(
                    'Ndamar'.toUpperCase(),
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54),
                  )),
                  const SizedBox(height: 30,),
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
                                builder: (context) => const RegisterScreen()),
                          );
                        },
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
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
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
                    ],
                  ),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomeScreen(),),);
                  }, child:  Text("Aller à accueil",style: TextStyle(color: Colors.blue[900], fontSize: 15, fontStyle: FontStyle.italic,),))

                ],
              ),
            )),
      ),
        // ,
        // floatingActionButton:
        // FloatingActionButton(
        //
        //   onPressed: () {  },
        //   child: Icon(Icons.arrow_back_ios),
        // )
    );
  }
}
