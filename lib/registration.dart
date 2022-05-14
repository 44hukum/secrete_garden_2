import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secrete_garden/src/login_signup/login.dart';

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
          title: Text('Register'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Column(
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
                          if (_formKey.currentState!.validate()) {
                            //if is valid then we would send a  validate the user and send is valid
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')));

                            print("${email_controller.text}");
                            print("${firstname_controller.text}");
                            print("${lastname_controller.text}");
                            print("${password_controller.text}");
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
        ),
      ),
    );
  }
}
