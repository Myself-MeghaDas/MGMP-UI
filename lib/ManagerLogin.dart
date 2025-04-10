import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ManagerHomePage.dart';
import 'SignUp.dart';
import 'login.dart';
import 'helper.dart';

class Managerlogin extends StatefulWidget {

  @override
  _Managerlogin createState() => _Managerlogin();
}

Widget buildEmail(TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Email or Phone', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
      SizedBox(height: 5),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))],
        ),
        height: 50,
        child: TextField(
          controller: controller,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(Icons.email, color: Color(0xFF01579B)),
            hintText: 'Email',
            hintStyle: TextStyle(color: Colors.black38),
          ),
        ),
      ),
    ],
  );
}

Widget buildPassword(TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Password', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
      SizedBox(height: 5),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))],
        ),
        height: 50,
        child: TextField(
          controller: controller,
          obscureText: true,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(Icons.lock, color: Color(0xFF01579B)),
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.black38),
          ),
        ),
      ),
    ],
  );
}

Widget buildForgetAndAdminBtns(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            print("Recover Password");
          },
          child: Text(
            'Recover Password',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) =>Login()));
          },
          child: Text(
            'Admin Login',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}


Widget buildSignUpBtn(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => SignUp()));
    },
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don't have an account?",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
            ),
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
class _Managerlogin extends State<Managerlogin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => fetchUser(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: Text(
          'Login',
          style: TextStyle(color: Colors.black38, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xFF0D47A1),
          child: SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 40),
                    Text(
                      'Sign in As Manager',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 50),
                    buildEmail(_emailController),
                    SizedBox(height: 10),
                    buildPassword(_passwordController),
                    SizedBox(height: 10),

                    buildForgetAndAdminBtns(context),
                    buildLoginBtn(),
                    buildSignUpBtn(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  List<dynamic> users = [];

  void fetchUser() async {
    // const url = 'https://rc-mgmp.themeghalayanage.com/api/auth/sign_in';
    // final uri = Uri.parse(url);
    //
    // final response = await http.post(
    //   uri,
    //   headers: {'Xen-Origin':'gAAAAABj4fitdXGtaMIU4-VcP36xx0ylGf8mrUbBA3IV3-x0dbAbhWRVnqWUVIF62YaMar21HM-uEtg_k0cWZ7lsJ-PCpsZTgZiyevE9v95xtUaBtTPOWbc='},
    //   body: jsonEncode({
    //     "applicationId": "64cb48d0e78510babebedbc6",
    //     "method": 2,
    //     "username": _emailController.text,
    //     "password": _passwordController.text,
    //   }),
    // );
    // const url = 'https://rc-mgmp.themeghalayanage.com/api/auth/sign_in';
    final body = {
      "applicationId": "63d13582e3890f5f73468476",
      "method": 2,
      "username": _emailController.text,
      "password": _passwordController.text,
    };
    final response = await requestApi('auth/sign_in',body);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      print('Login Successful: $json');
      if (json["status"] == true && json["code"] == 2000) {
        print('Login Successful: $json');

        // Example: You can extract the token if needed
        final token = json["result"][0];
        print("Access Token: $token");

        // Navigate to home page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ManagerHomePage()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Invalid login credentials'),
          backgroundColor: Colors.red,
        ));
      }
    } else {
      print('Login failed with status: ${response.statusCode}');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Login Failed'),
        backgroundColor: Colors.red,
      ));
    }
  }





}

