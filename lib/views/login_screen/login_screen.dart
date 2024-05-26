
import 'package:fitmepro/utils/colors/colors.dart';
import 'package:fitmepro/utils/images/images.dart';
import 'package:fitmepro/views/signup_screen/signup_screen.dart';
import 'package:fitmepro/widgets/text_field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(bgImage), fit: BoxFit.cover)),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.15,
                  left: size.width * 0.38,
                  right: size.width * 0.35,
                ),
                child: Image.asset(appIcon),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Text(
                  'FIT ME PRO',
                  style: GoogleFonts.kufam(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.18),
                child: SizedBox(
                    // height: size.height *0.5,
                    width: size.width,
                    // color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 30),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style: GoogleFonts.kufam(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            const CustomTextField(),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Text(
                              'Password',
                              style: GoogleFonts.kufam(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            const CustomTextField(),
                            SizedBox(
                              height: size.height * 0.05,
                            ),
                            Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)
                                  =>const SignUpScreen()));
                                },
                                child: Card(
                                    elevation: 6,
                                    child: Container(
                                      width: size.width * 0.4,
                                      height: size.height * 0.05,
                                      decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Center(
                                        child: Text('LOG IN',
                                            style: GoogleFonts.kufam(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('If you do not have an account ?',
                                    style: GoogleFonts.kufam(
                                      color: primaryColor,
                                    )),
                                Text(' Sign Up',
                                    style: GoogleFonts.kufam(
                                        color: primaryColor,
                                        fontWeight: FontWeight.bold)),
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              )
            ])));
  }
}
