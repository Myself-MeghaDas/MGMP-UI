import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ManagerLogin.dart';
import 'login.dart';
import 'package:http/http.dart' as http;
class SignUp extends StatefulWidget{
  const SignUp({super.key});
  @override
  State<SignUp> createState()=>_SignUpState();

}
Widget firstName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'FirstName',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 5),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 50,
        child: TextField(
          obscureText: true,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(Icons.person, color: Color(0xFF0D47A1)),
            hintText: 'FirstName',
            hintStyle: TextStyle(color: Colors.black38),
          ),
        ),
      ),
    ],
  );
}
Widget middleName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'MiddleName',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 5),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 50,
        child: TextField(
          obscureText: true,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(Icons.person, color: Color(0xFF0D47A1)),
            hintText: 'MiddleName',
            hintStyle: TextStyle(color: Colors.black38),
          ),
        ),
      ),
    ],
  );
}
Widget lastName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'LastName',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 5),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 50,
        child: TextField(
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(Icons.person, color: Color(0xFF0D47A1)),
            hintText: 'LastName',
            hintStyle: TextStyle(color: Colors.black38),
          ),
        ),
      ),
    ],
  );
}
Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Email',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 5),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 50,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(Icons.email, color: Color(0xFF0D47A1)),
            hintText: 'Email',
            hintStyle: TextStyle(color: Colors.black38),
          ),
        ),
      ),
    ],
  );
}
Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Password',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 5),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 50,
        child: TextField(
          obscureText: true,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(Icons.lock, color: Color(0xFF0D47A1)),
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.black38),
          ),
        ),
      ),
    ],
  );
}
Widget buildPhone() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Phone',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 5),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 50,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(Icons.phone, color: Color(0xFF0D47A1)),
            hintText: 'Phone',
            hintStyle: TextStyle(color: Colors.black38),
          ),
        ),
      ),
    ],
  );
}
Widget bankName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Bank Name',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 5),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 50,
        child: TextField(
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(Icons.account_balance, color: Color(0xFF0D47A1)),
            hintText: 'BankName',
            hintStyle: TextStyle(color: Colors.black38),
          ),
        ),
      ),
    ],
  );
}
Widget ifscCode() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'IFSC Code',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 5),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 50,
        child: TextField(
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(Icons.numbers, color: Color(0xFF0D47A1)),
            hintText: 'IFSC Code',
            hintStyle: TextStyle(color: Colors.black38),
          ),
        ),
      ),
    ],
  );
}
Widget accNo() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Account No',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 5),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 50,
        child: TextField(
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(Icons.account_balance_wallet, color: Color(0xFF0D47A1)),
            hintText: 'Account No',
            hintStyle: TextStyle(color: Colors.black38),
          ),
        ),
      ),
    ],
  );
}
Widget buildSignUpBtn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
        // Add your login functionality here
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white, // Button background color
        padding: EdgeInsets.all(10), // Adjust padding as needed
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40), // Rounded corners
        ),
      ),
      child: Text(
        'SignUp',
        style: TextStyle(
          color: Colors.black38,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget buildSignInBtn(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Managerlogin()), // Navigate to SignUp
      );
    },
    child: RichText(
        text: TextSpan(
            children: [
              TextSpan(
                  text: 'Already have an account?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,

                  )
              ),
              TextSpan(
                  text: ' Sign In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                  )
              )
            ]
        )),
  );
}
class _SignUpState extends State<SignUp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Color(0xFF0D47A1),
              // decoration: BoxDecoration(

              // gradient: LinearGradient(
              // begin: Alignment.topCenter,
              // end: Alignment.bottomCenter,
              // colors: [
              // Color(0x665ac18e),
              // Color(0x995ac18e),
              // Color(0xcc5ac18e),
              // Color(0xff5ac18e),
              // ]
              // )
              // ),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    buildSignInBtn(context),
                    SizedBox(height: 20),
                    firstName(),
                    SizedBox(height: 5),
                    middleName(),
                    SizedBox(height: 5),
                    lastName(),
                    SizedBox(height: 5),
                    buildEmail(),
                    SizedBox(height: 5),
                    buildPassword(),
                    SizedBox(height: 5),
                    buildPhone(),
                    SizedBox(height: 5),
                    bankName(),
                    SizedBox(height: 5),
                    ifscCode(),
                    SizedBox(height: 5),
                    accNo(),
                    SizedBox(height: 5),
                    buildSignUpBtn(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  List<dynamic> users = [];

  void fetchUser() async {
    const url = 'https://rc-mgmp.themeghalayanage.com/api/auth/sign_up';
    final uri = Uri.parse(url);

    final response = await http.post(
      uri,
      headers: {'Xen-Origin':'gAAAAABj4fitdXGtaMIU4-VcP36xx0ylGf8mrUbBA3IV3-x0dbAbhWRVnqWUVIF62YaMar21HM-uEtg_k0cWZ7lsJ-PCpsZTgZiyevE9v95xtUaBtTPOWbc='},
      body: jsonEncode({
        "applicationId": "64cb48d0e78510babebedbc6",
        "method": 2,
        "firstName": "Shesh",
        "middleName" : "Kumar",
        "lastName": "Singh",
        "phoneNumber": 9774451961,
        "email": "sarkaraditya772@gmail.com",
        "dialCode": 91,
        "password": "12345678",
        "ifscCode": "SBIN0000048",
        "accountNumber": 123456,
        "bankName": "HDFC"
      }),
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      if (json["status"] == true && json["code"] == 2000) {
        print('SignUp Successful: $json');

        // Example: You can extract the token if needed
        final token = json["result"][0];
        print("Access Token: $token");

        // Navigate to home page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Managerlogin()),
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