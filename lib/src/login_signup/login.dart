import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _loginFormKey = GlobalKey<FormState>();

  final email_controller = TextEditingController();
  final password_controller = TextEditingController();

  @override
  void dispose() {
    email_controller.dispose();
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
          title: Text('Login'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Column(
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
                              return 'Please enter your First Name';
                            }
                            return null;
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                          keyboardType: TextInputType.text,
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
                        onPressed: () {
                          if (_loginFormKey.currentState!.validate()) {
                            //if is valid then we would send a  validate the user and send is valid
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')));

                            print("${email_controller.text}");
                            print("${password_controller.text}");
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
        ),
      ),
    );
  }
}
