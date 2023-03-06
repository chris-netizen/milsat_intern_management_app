import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import '../../core/services/api.dart';
import '../../../files.dart';
import '../../intern_data.dart';
import '../../utils/validation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool tapped = false;
  bool? checked = false;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  var _errorMessage = '';
  var _error = '';

  void login() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    try {
      dio.options.headers['accept'] = 'application/json';
      dio.options.headers['Content-Type'] = 'application/json';
      var response = await dio.post('/api/auth/login',
          data: {"email": email, "password": password});
      print(response.data);
      print(response.data['token']);
      var token = response.data['token'];
      var refreshToken = response.data['refreshToken'];
      cred['token'] = token;
      cred['refreshToken'] = refreshToken;
      Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
      print(decodedToken);
      cred['Id'] = decodedToken.values.elementAt(0);
      cred['role'] = decodedToken.values.elementAt(2);
      cred['email'] = decodedToken.values.elementAt(1);
      if (response.statusCode == 200) {
        if (decodedToken.values.elementAt(2) == 'Intern') {
          AppNavigator.navigateTo(mainPage);
        } else if (decodedToken.values.elementAt(2) == 'Mentor') {
          AppNavigator.navigateTo(mainPageMentor);
        }
      }
    } catch (e) {
      print(e.toString());
      setState(() {
        _errorMessage = 'Invalid Credentials';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Gap(90.h),
            Image.asset(
              'assets/app_logo2.png',
              height: 40.h,
              width: 150.w,
            ),
            Gap(40.h),
            Text(
              'Welcome',
              textAlign: TextAlign.center,
              style: GoogleFonts.raleway(
                color: const Color(0xFF5E545F),
                fontSize: 36.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(48.h),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: GoogleFonts.raleway(
                            color: const Color(0xFF5E545F),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Gap(8.h),
                        AppTextField(
                          validator: (a) {
                            Utils.validateEmail(a);
                          },
                          controller: _emailController,
                          text: 'Email address',
                          obscureText: false,
                        ),
                        Gap(24.h),
                        Text(
                          'Password',
                          style: GoogleFonts.raleway(
                            color: const Color(0xFF5E545F),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Gap(8.h),
                        AppTextField(
                          validator: (value) {
                            Utils.isValidPassword(value);
                          },
                          text: 'Password',
                          icon: IconButton(
                            onPressed: () {
                              setState(() {
                                tapped = !tapped;
                              });
                            },
                            icon: Icon(
                              tapped ? FontAwesome.eye_off : FontAwesome.eye,
                              size: 20.01.sp,
                            ),
                          ),
                          obscureText: tapped ? true : false,
                          controller: _passwordController,
                        ),
                      ],
                    ),
                  ),
                  Gap(11.h),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: checked,
                                activeColor: AppTheme.deepPurpleColor,
                                onChanged: (val) {
                                  setState(() {
                                    checked = val;
                                  });
                                },
                              ),
                              Gap(7.w),
                              Text(
                                'Keep me logged in',
                                style: GoogleFonts.raleway(
                                  color: const Color(0xFF5E545F),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                (MaterialPageRoute(
                                  builder: (context) => const ForgetPassword(),
                                )),
                              );
                            },
                            child: Text(
                              'Forgot Password?',
                              style: GoogleFonts.raleway(
                                color: const Color(0xFF5E545F),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap(33.5.h),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      maximumSize: Size(double.infinity, 45.h),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // AppNavigator.navigateTo(mainPage);
                        login();
                      }
                    },
                    child: Center(
                      child: Text(
                        'Login',
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                  ),
                  Gap(8.h),
                  Text(
                    _errorMessage,
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
