import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';
import '../../core/services/api.dart';
import '../../utils/validation.dart';

var emailInput = <String, dynamic>{};

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Future<void> resetPassword_(String email) async {
    final url = '/api/auth/forgot-password';
    final options = Options(
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json',
      },
    );
    final data = {'email': email};
    final response = await dio.post(url, options: options, data: data);
    if (response.statusCode == 200) {
      print('Yay!, good work');
      AppNavigator.navigateTo(resetPassword);
    } else {
      print('Try something else please');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forget Password'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(30.h),
              Center(
                child: Text(
                  'A reset link will be sent to your mail\n with instructions',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: appTextStyle,
                ),
              ),
              Gap(48.h),
              Text(
                'Email',
                style: appTextStyle,
              ),
              Gap(8.h),
              AppTextField(
                validator: (value) {
                  Utils.validateEmail(value);
                },
                text: 'Email address',
                obscureText: false,
                controller: _emailController,
              ),
              Gap(32.h),
              WideAppButton(
                text: 'Reset Password',
                pressed: () {
                  if (_formKey.currentState!.validate()) {
                    resetPassword_(_emailController.text);
                    emailInput['email'] = _emailController.text;
                  }
                },
              ),
              Gap(32.h),
              const ReturnToLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
