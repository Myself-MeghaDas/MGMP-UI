import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'ManagerLogin.dart';
import 'homePage.dart';
import 'helper.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
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

Widget buildForgetAndManagerBtns(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0), // Optional: spacing from edges
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Forget Password Button (Left)
        TextButton(
          onPressed: () => print("ForgetPassword"),
          style: TextButton.styleFrom(padding: EdgeInsets.only(left: 0)),
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

        // Manager Login Button (Right)
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Managerlogin()),
            );
          },
          child: Text(
            'Manager Login',
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

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Widget buildLoginBtn(BuildContext context) {
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
          'Sign in',
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
                      'Sign in As Admin',
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

                    buildForgetAndManagerBtns(context),
                    buildLoginBtn(context),

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
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    // Basic Email or Phone validation
    final emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
    final phoneRegex = RegExp(r"^\d{10}$");

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Please enter both email/phone and password"),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    if (!emailRegex.hasMatch(email) && !phoneRegex.hasMatch(email)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Enter a valid email address or 10-digit phone number"),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    if (password.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Password must be at least 6 characters long"),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }


    // const url = 'https://rc-mgmp.themeghalayanage.com/api/auth/sign_in';
    // final uri = Uri.parse(url);
    //
    // final response = await http.post(
    //   uri,
    //   headers: {
    //     'Content-Type': 'application/json',
    //     'Xen-Origin':
    //     'gAAAAABj4fitdXGtaMIU4-VcP36xx0ylGf8mrUbBA3IV3-x0dbAbhWRVnqWUVIF62YaMar21HM-uEtg_k0cWZ7lsJ-PCpsZTgZiyevE9v95xtUaBtTPOWbc='
    //   },
    //   body: jsonEncode({
    //     "applicationId": "63d13582e3890f5f73468476",
    //     "method": 2,
    //     "username": email,
    //     "password": password,
    //   }),
    // );
    final body = {
        "applicationId": "63d13582e3890f5f73468476",
        "method": 2,
        "username": email,
        "password": password,
      };
    // print('$body');
    final response = await requestApi('auth/sign_in',body);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      print('$json');
      if (json["status"] == true && json["code"] == 2000) {
        final token = json["result"][0];
        print("Access Token: $token");

        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('isLoggedIn', true);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => MyHomePage()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Invalid login credentials"), backgroundColor: Colors.red),
        );
      }
    } else {
      print('Login failed with status: ${response.statusCode}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login Failed"), backgroundColor: Colors.red),
      );
    }
  }

}

