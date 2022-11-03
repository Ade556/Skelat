import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:halat_app/userscreen.dart';
import 'package:lottie/lottie.dart';

import '../signup_screen/signup.dart';
import 'package:http/http.dart' as http;

class Logins extends StatefulWidget {
  const Logins({Key? key}) : super(key: key);

  @override
  State<Logins> createState() => _LoginsState();

  Object? toJson() {}
}

class _LoginsState extends State<Logins> {
  bool _visible = false;
  bool isLoading = false;
  String errormessage = '';
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  String? validatePassword(String? formPassword) {
    if (formPassword == null || formPassword.isEmpty)
      return 'Password is required.';

    return null;
  }

  String? validateEmail(String? formEmail) {
    if (formEmail == null || formEmail.isEmpty)
      return 'E-mail address is required.';

    String pattern = r'\w+@\w+\.\w+';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(formEmail)) return 'Invalid E-mail Address format.';

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.maxFinite,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 19, right: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(
                        color: Color(0xff00244f),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontFamily: 'Lato',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Container(
                      height: 300,
                      width: 300,
                      child: Lottie.asset('assets/images/114317-banking.json'),
                    ),
                  ),
                  Form(
                    key: _formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff00244f),
                            fontFamily: 'Lato',
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          validator: validateEmail,
                          controller: _email,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xff00244f),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Email Address ',
                            labelStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontFamily: 'Lato',
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff00244f),
                            fontFamily: 'Lato',
                          ),
                        ),
                        SizedBox(height: 8),
                        TextFormField(
                          validator: validatePassword,
                          controller: _password,
                          obscureText: _visible,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xff00244f),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Password ',
                            labelStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Lato',
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _visible = !_visible;
                                });
                              },
                              icon: _visible
                                  ? Icon(
                                      Icons.visibility,
                                      color: Color(0xff00244f),
                                    )
                                  : Icon(
                                      Icons.visibility_off,
                                      color: Color(0xff00244f),
                                    ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          errormessage,
                          style: TextStyle(color: Colors.red),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 24, right: 24.0),
                          child: GestureDetector(
                            onTap: () {
                              if (_formkey.currentState!.validate()) {
                                // If the form is valid, display a snackbar. In the real world,
                                // you'd often call a server or save the information in a database.

                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Processing Data')),
                                );
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => UserScreen()));
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 380,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff00244f),
                              ),
                              child: isLoading == false
                                  ? Center(
                                      child: Text(
                                        'Sign In',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  : const Center(
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'You dont have an account?',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Color(0xff00244f),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<http.Response?> postLogin(Logins data) async {
    http.Response? postLoginResponse;
    var url = Uri.parse("https://kwilox.herokuapp.com/api/v1/user-login");
    Map<String, String> requestHeaders = {
      "Content-type": "application/json",
      "Accept": "*/*",
    };
    setState(() {
      isLoading = true;
    });

    try {
      postLoginResponse = await http.post(url,
          headers: requestHeaders, body: jsonEncode(data.toJson()));
      if (postLoginResponse.statusCode == 200) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const UserScreen()));
        if (kDebugMode) {
          print("Response status: ${postLoginResponse.statusCode}");
          print("Response body: ${postLoginResponse.body}");
          var responseData = jsonDecode(postLoginResponse.body);
          print(responseData);
        }
      }
    } catch (e, s) {
      if (kDebugMode) {
        print(e);
        print(s);
      }
    }
    setState(() {
      isLoading = false;
    });
    return postLoginResponse;
  }
}
