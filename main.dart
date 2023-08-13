import 'package:flutter/material.dart';
import 'component/my_textfield.dart';
import 'component/my_button.dart';
import 'screens/homepage.dart';
import 'screens/register.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  //Text Editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello",
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Form(
            key: formkey,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Icon(
                    Icons.account_box,
                    size: 100,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome To Login Page",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    controller: usernameController,
                    labelText: "Username",
                    obcureText: false,
                    check: (name) {
                      if (name!.isEmpty) {
                        return "กรุณาใส่ชื่อ";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    controller: passwordController,
                    labelText: "Password",
                    obcureText: true,
                    check: (password) {
                      if (password!.isEmpty) {
                        return "กรุณากรอกรหัสผ่าน";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("RememberMe"),
                        Expanded(
                          child: Text(
                            "Forgot Password?",
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  ), // Padding Forgot Password
                  const SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    width: 390,
                    height: 45,
                    child: MyBotton(
                        onpressed: () {
                          if (formkey.currentState!.validate())
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                        },
                        color: Colors.blueAccent,
                        btntext: "เข้าสู่ระบบ"),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: const Text(
                      "ยังไม่มีบัญชีใช้ ?",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    width: 390,
                    height: 45,
                    child: MyBotton(
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        color: Colors.redAccent,
                        btntext: "Login With Google"),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 390,
                    height: 45,
                    child: MyBotton(
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        color: Colors.black,
                        btntext: "Login With AppleID"),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
