import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http_learning/Custom/elevated_buttons.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Signed in as: ${user.email!}'),
                const SizedBox(height: 20,),
                ElevatedButtons(
                  isSignOutButton: true,
                    name: "LogOut"
                )
              ],
            ),
          ),
    ));
  }
}
