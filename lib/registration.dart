import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secrete_garden/main.dart';
import 'package:secrete_garden/src/login_signup/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_database/firebase_database.dart';


class SecreteGardenForm extends StatefulWidget {
  const SecreteGardenForm({Key? key}) : super(key: key);

  @override
  State<SecreteGardenForm> createState() => _SecreteGardenFormState();
}

class _SecreteGardenFormState extends State<SecreteGardenForm> {
  final _formKey = GlobalKey<FormState>();

  final email_controller = TextEditingController();
  final firstname_controller = TextEditingController();
  final lastname_controller = TextEditingController();
  final password_controller = TextEditingController();


  @override
  void dispose() {
    email_controller.dispose();
    firstname_controller.dispose();
    lastname_controller.dispose();
    password_controller.dispose();
    super.dispose();
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
          title: Text('Register To Use Secrete Garden'),
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
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      //firstname
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            keyboardType: TextInputType.text,
                            controller: firstname_controller,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "First Name"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your First Name';
                              }
                              return null;
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            keyboardType: TextInputType.text,
                            controller: lastname_controller,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "last Name"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your First Name';
                              }
                              return null;
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            enableSuggestions: true,
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
                                hintText: "password"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your First Name';
                              }
                              return null;
                            }),
                      ),
                      ElevatedButton(
                          onPressed: () async {

                            if (_formKey.currentState!.validate()) {
                              //if is valid then we would send a  validate the user and send is valid
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Processing Data')));
                              FirebaseAuth.instance.createUserWithEmailAndPassword(email: email_controller.text, password: password_controller.text).then((value) =>
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage(title: "The Secret Garden",)))


                             ).onError((error, stackTrace) =>
                                print("ERROR ${error.toString()}")
                              );

                            }

                            //GET THE VALUE

                            //UPDATE THE VALUE
                          },
                          child: const Text('Signup'))
                    ],
                  )),
              Container(
                child: TextButton(
                  onPressed: () => {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Login()))
                  },
                  child: Text("Already registered ? Login"),
                ),
              )
            ],
          )],
        ),
      ),
    );
  }
}
