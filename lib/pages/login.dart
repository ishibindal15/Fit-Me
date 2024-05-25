import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
            child: Padding(
                padding: EdgeInsets.fromLTRB(30, 80, 30, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Pump House',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'FIND OUT EXACTLY WHAT TRAINING WILL WORK SPECIFICALLY FOR YOU',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      'Take your next Step Now!',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton.icon(
                        onPressed: (){
                          Navigator.pushNamed(
                            context,
                            '/dashboard'
                          );
                        },
                        icon: Icon(Icons.android),
                        label: Text(
                          'Sign in with Google',
                          style: TextStyle(
                            fontSize: 18
                          ),
                        ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/man.png',
                      height: 250,
                    )
                  ],
                )
            )
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/hero.jpg'),
                fit: BoxFit.cover
            )
          ),

        )
      // backgroundColor: Colors.pinkAccent,
    );
  }
}
