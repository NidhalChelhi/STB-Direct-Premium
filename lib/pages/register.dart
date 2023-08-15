import 'package:flutter/material.dart';
import 'package:stb_direct/components/custom_text_field.dart';
import 'package:stb_direct/styles/button.dart';
import 'package:stb_direct/styles/colors.dart';
import 'package:stb_direct/styles/typo.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: navy,
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Image.asset(
                  'assets/logo_stb_cropped.png',
                  width: MediaQuery.sizeOf(context).width / 3,
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    style: title(white),
                    children: <TextSpan>[
                      const TextSpan(text: 'STB Direct'),
                      TextSpan(text: ' Premium', style: title(blue)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('Create new account', style: subTitle(white)),
                const SizedBox(
                  height: 50,
                ),
                customTextField('Fullname'),
                const SizedBox(
                  height: 16,
                ),
                customTextField('Phone Number'),
                const SizedBox(
                  height: 16,
                ),
                customTextField('Email'),
                const SizedBox(
                  height: 16,
                ),
                customTextField('Password'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: Text(
                        'Already have an account ?',
                        style: label(greyLight),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: buttonPrimary,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/welcome');
                  },
                  child: Text('Sign Up', style: buttonText(white)),
                ),
                const SizedBox(
                  height: 14,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
