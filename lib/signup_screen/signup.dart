import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:halat_app/splash_screen.dart';
import 'package:halat_app/widgets/logins.dart';
import 'package:http/http.dart' as http;
import '../login.dart';
import '../onboarding.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpScreenState();

  Object? toJson() {}
}

class _SignUpScreenState extends State<SignUp> {
  bool _visible = true;
  bool _checked = false;
  bool isLoading = false;
  String errormessage = '';
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _firstname = TextEditingController();
  TextEditingController _lastname = TextEditingController();
  TextEditingController _phonenumber = TextEditingController();

  final formkey = GlobalKey<FormState>();
  String? validateEmail(String? formEmail) {
    if (formEmail == null || formEmail.isEmpty) {
      return 'E-mail address is required.';
    }

    String pattern = r'\w+@\w+\.\w+';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(formEmail)) return 'Invalid E-mail Address format.';

    return null;
  }

  String? validatePhoneNumber(String? formPhoneNumber) {
    if (formPhoneNumber == null || formPhoneNumber.isEmpty)
      return 'PhoneNumber is required.';

    return null;
  }

  String? validatePassword(String? formPassword) {
    if (formPassword == null || formPassword.isEmpty) {
      return 'Password is required.';
    }

    return null;
  }

  String? validateFirstName(String? formFirstName) {
    if (formFirstName == null || formFirstName.isEmpty)
      return 'First Name is required.';

    return null;
  }

  String? validateLastName(String? formLastName) {
    if (formLastName == null || formLastName.isEmpty)
      return 'Last Name is required.';

    return null;
  }

  bool isValidated = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formkey,
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 3),
                      Padding(
                        padding: const EdgeInsets.only(left: 1),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Create Account',
                        style: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Kindly fill the information below, to create\naccount',
                        style: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'First Name',
                                style: TextStyle(
                                  fontFamily: 'JosefinSans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 2),
                              SizedBox(
                                height: 90,
                                width: 160,
                                child: Column(
                                  children: [
                                    TextFormField(
                                      controller: _firstname,
                                      validator: validateFirstName,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        hintText: 'Enter First Name',
                                        hintStyle: const TextStyle(
                                          fontFamily: 'JosefinSans',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff8C8C8C),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Last Name',
                                  style: TextStyle(
                                    fontFamily: 'JosefinSans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                SizedBox(
                                  height: 90,
                                  width: 140,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        controller: _lastname,
                                        validator: validateLastName,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          hintText: 'Enter Last Name',
                                          hintStyle: const TextStyle(
                                            fontFamily: 'JosefinSans',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff8C8C8C),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Email Address',
                            style: TextStyle(
                              fontFamily: 'JosefinSans',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 2),
                          SizedBox(
                            height: 90,
                            width: 315,
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: _email,
                                  validator: validateEmail,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    hintText: 'Enter your Email Address',
                                    hintStyle: const TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff8C8C8C),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Phone Number',
                            style: TextStyle(
                              fontFamily: 'JosefinSans',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 3),
                          SizedBox(
                            height: 90,
                            width: 315,
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: _phonenumber,
                                  validator: validatePhoneNumber,
                                  keyboardType: TextInputType.phone,
                                  maxLength: 11,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    hintText: 'Enter your Phone Number',
                                    hintStyle: const TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff8C8C8C),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      //
                      // const SizedBox(height: 12),
                      Text(
                        'Create Password',
                        style: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 3),
                      SizedBox(
                        height: 90,
                        width: 315,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _password,
                              validator: validatePassword,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                hintText: 'Enter your Password',
                                hintStyle: const TextStyle(
                                  fontFamily: 'JosefinSans',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff8C8C8C),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          Checkbox(
                            value: _checked,
                            activeColor: Color(0xff00244f),
                            onChanged: (bool? value) {
                              setState(() {
                                _checked = !_checked;
                              });
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'I agree to the ',
                                    style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'terms of services ',
                                    style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff00244f),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    'and ',
                                    style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'privacy policy',
                                    style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff00244f),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      GestureDetector(
                        onTap: () {
                          if (formkey.currentState!.validate()) {
                            setState(() {
                              isLoading = true;
                            });
                            Future.delayed(Duration(seconds: 10))
                                .then((value) async {
                              setState(() {
                                isLoading = false;
                              });
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Logins()));
                          }
                        },
                        child: Container(
                          height: 52,
                          width: 315,
                          decoration: BoxDecoration(
                            color: Color(0xff00244f),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: isLoading == false
                              ? Center(
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              : Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<http.Response?> postRegister(SignUp data) async {
    http.Response? postRegisterResponse;
    var url = Uri.parse("https://kwilox.herokuapp.com/api/v1/register-user");
    Map<String, String> requestHeaders = {
      "Content-type": "application/json",
      "Accept": "*/*",
    };
    setState(() {
      isLoading = true;
    });
    try {
      postRegisterResponse = await http.post(url,
          headers: requestHeaders, body: jsonEncode(data.toJson()));
      if (postRegisterResponse.statusCode == 201) {
        setState(() {
          isLoading = false;
        });
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Logins()));
        if (kDebugMode) {
          print("Response status: ${postRegisterResponse.statusCode}");
          print("Response body: ${postRegisterResponse.body}");
          var responseData = jsonDecode(postRegisterResponse.body);
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
    return postRegisterResponse;
  }
}
