import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:register_and_login_api/screens/homepage.dart';
import 'package:register_and_login_api/screens/login_page.dart';
import 'package:register_and_login_api/screens/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Job Seeking App',
      debugShowCheckedModeBanner: false,
      home: Frontpage(),
      routes: {
        
        '/home': (context) => const Homepage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
      },
    );
  }
}

class Frontpage extends StatefulWidget {
  const Frontpage({Key? key}) : super(key: key);

  @override
  State<Frontpage> createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        backgroundColor: Colors.white,
        duration: 2000,
        splash: Padding(
          padding: const EdgeInsets.symmetric(vertical: 180),
          child: Column(children: [
            Image.asset("assets/images/logo1.jpg"),
            Text(
              "Tasker",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 50,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold),
            )
          ]),
        ),
        splashIconSize: double.infinity,
        nextScreen: RegisterPage(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
