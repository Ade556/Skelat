import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halat_app/widgets/my_button.dart';
import 'package:halat_app/widgets/my_text.dart';
import 'package:halat_app/userscreen.dart';

// Juwon Ayodele
// This is the First Screen of My Figma Design
class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 14, right: 14),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 23),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      borderRadius: 15,
                      child: Icon(Icons.apps_outlined),
                      height: 47,
                      width: 47,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                        ),
                      ],
                    ),
                    MyButton(
                      borderRadius: 15,
                      child: Icon(Icons.more_horiz_outlined),
                      height: 47,
                      width: 47,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 28),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Center(
                      child: MyButton(
                          verticalPadding: 39.0,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                            ),
                          ],
                          borderRadius: 10,
                          width: 332,
                          height: 135,
                          child: Column(
                            children: [
                              MyText('Domhnall Gleeson',
                                  color: Colors.black,
                                  fontSize: 26,
                                  fontFamily: 'Gilroy-Bold'),
                              SizedBox(height: 8),
                              MyText(
                                'account ending with 1545',
                                color: Color(0xff00244f),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              )
                            ],
                          )),
                    ),
                    Positioned(
                      bottom: 100,
                      child: MyButton(
                        // shape: ,
                        width: 68,
                        height: 65.48,
                        child: Image.asset('assets/images/download (6).jpg'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        MyButton(
                          boxDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffF4F5F9),
                            ),
                          ],
                          width: 50,
                          height: 53,
                          child:
                              Image.asset('assets/images/Mask Group (11).png'),
                        ),
                        SizedBox(height: 8),
                        MyText('Transfer',
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ],
                    ),
                    SizedBox(width: 18),
                    Column(
                      children: [
                        MyButton(
                          boxDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffF4F5F9),
                            ),
                          ],
                          width: 50,
                          height: 53,
                          child:
                              Image.asset('assets/images/Mask Group (12).png'),
                        ),
                        SizedBox(height: 8),
                        MyText('Send',
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ],
                    ),
                    SizedBox(width: 19),
                    Column(
                      children: [
                        MyButton(
                          boxDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffF4F5F9),
                            ),
                          ],
                          width: 50,
                          height: 53,
                          child:
                              Image.asset('assets/images/Mask Group (13).png'),
                        ),
                        SizedBox(height: 8),
                        MyText('Shopping',
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ],
                    ),
                    SizedBox(width: 18),
                    Column(
                      children: [
                        MyButton(
                          boxDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffF4F5F9),
                            ),
                          ],
                          width: 53,
                          height: 53,
                          child:
                              Image.asset('assets/images/Mask Group (14).png'),
                        ),
                        SizedBox(height: 8),
                        MyText('Bill',
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ],
                    ),
                    SizedBox(width: 17),
                    Column(
                      children: [
                        MyButton(
                          boxDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffF4F5F9),
                            ),
                          ],
                          width: 53,
                          height: 53,
                          child:
                              Image.asset('assets/images/Mask Group (15).png'),
                        ),
                        SizedBox(height: 8),
                        MyText('Vouchers',
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 37),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyButton(
                      verticalPadding: 8,
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(255, 137, 126, 0.28)
                                .withOpacity(.3),
                            offset: Offset(1, 6),
                            spreadRadius: 1,
                            blurRadius: 29),
                      ],
                      borderRadius: 8,
                      width: 162,
                      height: 67,
                      child: Column(
                        children: [
                          MyText('Salary',
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white),
                          MyText('\$255,500',
                              fontFamily: 'Noto Serif',
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Colors.white),
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    MyButton(
                      color: Color(0xff00244f),
                      verticalPadding: 8,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(49, 72, 206, 0.4)
                                .withOpacity(.2),
                            offset: Offset(1, 22),
                            spreadRadius: 2,
                            blurRadius: 20),
                      ],
                      borderRadius: 8,
                      width: 162,
                      height: 67,
                      child: Column(
                        children: [
                          MyText('Transfers',
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white),
                          MyText('\$42,500',
                              fontFamily: 'Noto Serif',
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyText(
                        'Recent transactions',
                        fontFamily: 'Gilroy-Bold',
                        fontSize: 26,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            MyButton(
                              borderRadius: 10,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                ),
                              ],
                              width: 54,
                              height: 52,
                              child:
                                  Image.asset('assets/images/image 16 (1).png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      MyText(
                                        'Uber Monthly',
                                        fontFamily: 'Inter',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff151940),
                                      ),
                                      MyText(
                                        '04th february 2021',
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff7F8192),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            MyText(
                              '\$650',
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.blueGrey,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            MyButton(
                              borderRadius: 10,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                ),
                              ],
                              width: 54,
                              height: 52,
                              child: Image.asset(
                                  'assets/images/Rectangle 43 (1).png'),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      MyText(
                                        'ATM Withdraws',
                                        fontFamily: 'Inter',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff020000),
                                      ),
                                      MyText(
                                        'BDT ACCOUNT',
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff7F8192),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            MyText(
                              '\$650',
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.blueGrey,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 9),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            MyButton(
                              borderRadius: 10,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                ),
                              ],
                              width: 54,
                              height: 52,
                              child: Image.asset(
                                  'assets/images/Rectangle 34 (5).png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      MyText(
                                        'Transfer Money',
                                        fontFamily: 'Inter',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff020000),
                                      ),
                                      MyText(
                                        'INR ACCOUNT',
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff7F8192),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            MyText(
                              '\$100',
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.blueGrey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
