// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:testapp/component/my_textfield.dart';
import 'package:testapp/component/checkbox.dart';
import 'package:testapp/component/my_button.dart';

void Main() {
  runApp(MaterialApp(
    home: Register(),
  ));
}

class Register extends StatelessWidget {
  Register({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final lastname = TextEditingController();
  final email = TextEditingController();
  final tel = TextEditingController();
  bool isChecked = false;
  void printMessage() {
    print('User Accept');
  }

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Registrator",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
              child: Container(
                color: Colors.grey.shade300,
                height: 2.0,
              ),
              preferredSize: const Size.fromHeight(4.0)),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "LOGO",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Form(
          key: formkey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "สมัครเข้าใช้งาน",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "กรุณากรอกข้อมูลให้ครบถ้วน",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  MyTextField(
                    labelText: "ชื่อผู้ใช้งาน",
                    controller: usernameController,
                    obcureText: false,
                    check: (regis_name) {
                      if (regis_name!.isEmpty) {
                        return "กรุณากรอกชื่อผู้ใช้";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  MyTextField(
                      labelText: "นามสกุล",
                      controller: lastname,
                      obcureText: false,
                      check: (lastName) {
                        if (lastName!.isEmpty) {
                          return "กรูรากรอกนาสกุลผู้ใช้";
                        }
                        return null;
                      }),
                  SizedBox(
                    height: 12,
                  ),
                  MyTextField(
                      labelText: "อีเมลล์",
                      controller: email,
                      obcureText: false,
                      check: (email) {
                        if (email!.isEmpty) {
                          return "กรุณากรอก Email";
                        }
                        return null;
                      }),
                  SizedBox(
                    height: 12,
                  ),
                  MyTextField(
                    labelText: "เบอร์โทรสัพท์",
                    controller: tel,
                    obcureText: false,
                    check: (tel) {
                      if (tel!.isEmpty) {
                        return "กรุณากรอกเบอร์โทรศัพท์";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    labelText: "รหัสผ่าน",
                    controller: passwordController,
                    obcureText: true,
                    check: (password) {
                      if (password!.isEmpty) {
                        return "กรุณากรอกรหัสผ่าน";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "ดูข้อตกลงและเงื่อนไขของ App",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                  checkbox(isChecked: isChecked),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: 300,
                    height: 40,
                    child: MyBotton(
                        onpressed: () {
                          if (formkey.currentState!.validate()) {
                            Navigator.pop(context);
                          } else if (isChecked != true) {
                            return printMessage();
                          }
                        },
                        btntext: "ลงชื่อเข้าใช้งาน",
                        color: Colors.blueAccent),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "มีบัญชีอยู่แล้ว ? ",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Lorem CopyRight@",
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
