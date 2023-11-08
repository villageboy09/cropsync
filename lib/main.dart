import 'package:cropsync/components.dart/textfield.dart';
import 'package:flutter/material.dart';
import 'components.dart/button.dart';
import 'package:cropsync/components.dart/squaretile.dart';
void main(){
  runApp(App());
}
class App extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              children: [
                Image.asset("lib/images.dart/2.png",height: 250,),
                const Text(
                  "Username",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                    controller: usernameController,
                    hintText: 'Username',
                    obscureText: false),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true), 
                const SizedBox(
                  height: 20,
                ),
                MyButton(
                  onTap: () {

                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Square(imagePath: "lib/images.dart/2.png.")],
                ), 
                   
            ],
          ),
        )
      ),
    );
  }
}

