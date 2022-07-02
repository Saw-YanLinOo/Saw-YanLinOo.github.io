import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const OnbroadingPage(),
    );
  }
}

class OnbroadingPage extends StatelessWidget {
  const OnbroadingPage({Key? key}) : super(key: key);

  static const route = '/onbrading';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(185, 231, 252, 1),
      body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              SvgPicture.asset(
                  "assets/images/onboarding.svg",
                  fit: BoxFit.cover,
                  height: 250,
                ),
              const Padding(
                  padding: EdgeInsets.only(left: 20, top: 30),
                  child: Text(
                    "Let's Get Started",
                    style: TextStyle(
                        fontFamily: 'Fira Sans',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        wordSpacing: 2.0,
                        fontSize: 30),
                  ),
                ),

              const Padding(
                  padding: EdgeInsets.only(left: 22, top: 13),
                  child: Text(
                    "Welcome To Kopwar......!",
                    style: TextStyle(
                        fontFamily: 'Fira Sans',
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w300,
                        fontSize: 18),
                  ),
                ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  
                },
                child: Center(
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 2,
                          blurRadius: 1,
                          offset: const Offset(1, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Sign Up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Fira Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            wordSpacing: 2.0,
                            letterSpacing: 2,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account...?",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Fira Sans',
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.deepPurple, fontSize: 18),
                      ))
                ],
              ),
            ],
          ),
    );
  }
}

