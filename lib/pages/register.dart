import 'package:flutter/material.dart';
import 'package:stb_direct/components/custom_text_field.dart';
import 'package:stb_direct/styles/button.dart';
import 'package:stb_direct/styles/colors.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
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
                  'assets/icons/symbol_blue.png',
                  width: MediaQuery.sizeOf(context).width / 3,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text('Create new account',
                    style: TextStyle(
                        color: white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600)),
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
                        style: TextStyle(
                            color: greyLight,
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
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
                  child: Text('Sign Up',
                      style: TextStyle(
                          color: white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
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
