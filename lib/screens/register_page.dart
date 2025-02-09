import 'package:flutter/material.dart';

import '../components/text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    super.key,
    required this.tooglePages,
  });

  final Function()? tooglePages;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  void initState() {
    print("in register page init");
    super.initState();
  }

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  // final reEnterPasswordTextController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // logo
                    const Icon(
                      Icons.lock,
                      size: 100,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    //Welcome mess
                    Text(
                      "Let's create an account for you!",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    //email
                    MytextField(
                      controller: emailTextController,
                      hintText: "Email",
                      obscureText: false,
                    ),
                    // pass
                    const SizedBox(
                      height: 10,
                    ),
                    MytextField(
                      controller: passwordTextController,
                      hintText: "Pass",
                      obscureText: true,
                    ),
                    //sign
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 22,
                    ),

                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 108, vertical: 22),
                          child: Text(
                            "Register",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),

                    // go to regi page
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        GestureDetector(
                          onTap: widget.tooglePages,
                          child: const Text(
                            "Login now",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
