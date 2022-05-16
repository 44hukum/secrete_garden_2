import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class Login extends StatefulWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _loginFormKey = GlobalKey<FormState>();

  final email_controller = TextEditingController();
  final password_controller = TextEditingController();
  int _loginfail = 0;

  @override
  void dispose() {
    email_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _loginfail++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: Colors.lightGreen,
        ),
        body: ListView(
          children: [
            Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/logo.jpg"),
                      fit: BoxFit.fitWidth),
                ),
               // Foreground widget here
            ),
            Column(
              children: [
                Form(
                    key: _loginFormKey,
                    child: Column(
                      children: <Widget>[
                        //firstname
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: email_controller,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(), hintText: "Email"),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your Email';
                                }
                                return null;
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              controller: password_controller,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "password",
                                // errorText:  _loginfail == 1 ? 'password not match' : null,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your your password';
                                }
                                return null;
                              }),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (_loginFormKey.currentState!.validate()) {
                                //if is valid then we would send a  validate the user and send is valid
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Processing Data')));

                                print("${email_controller.text}");
                                print("${password_controller.text}");

                                FirebaseAuth.instance
                                    .signInWithEmailAndPassword(
                                    email: email_controller.text,
                                    password: password_controller.text)
                                    .then((value) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyHomePage(
                                            title: "The Secret Garden",
                                          )))
                                      .onError((error, stackTrace) => {});
                                });
                              }
                              //GET THE VALUE

                              //UPDATE THE VALUE
                            },
                            child: const Text('Login'))
                      ],
                    )),
                Container(
                  child: TextButton(
                    onPressed: () => {
                      Navigator.pop(
                          context, MaterialPageRoute(builder: (context) => Login()))
                    },
                    child: Text("Not Registered ? Signup"),
                  ),
                )
              ],
            )
            ],
        ),
      ),
    );
  }
}
