// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:login/bottomBar/bottomBar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  bool ischecked = false;
  String username = "";
  bool isHoverd = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: 800,
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 27,
                  ),
                  //logo
                  Center(
                    child: Image.asset(
                      "assets/images/logo2.png",
                      height: 60,
                      width: 400,
                    ),
                  ),
                  //usernameTextfield
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 55),
                    child: Text(
                      "Username",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 71, 126, 147)),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 55),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Username",
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  //passwdTextfield
                  const Padding(
                    padding: EdgeInsets.only(left: 55),
                    child: Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 71, 126, 147)),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 55),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.all(8),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),

                  //remeberMe && ForgotPasswd
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              value: ischecked,
                              onChanged: onChecked,
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Remember Me",
                                style: TextStyle(fontSize: 10),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: GestureDetector(
                                    child: MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          isHoverd = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          isHoverd = false;
                                        });
                                      },
                                      child: Text(
                                        "Forgot Password?",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: const Color.fromARGB(
                                                255, 71, 126, 147),
                                            decoration: isHoverd
                                                ? TextDecoration.underline
                                                : TextDecoration.none),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //buttonLogin
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 55),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bottombar(
                                          selectedIndex: 2,
                                        )));
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              backgroundColor:
                                  const Color.fromARGB(255, 71, 126, 147),
                              textStyle: const TextStyle(fontSize: 20)),
                          child: const SizedBox(
                            height: 40,
                            child: Center(
                              child: Text("Login"),
                            ),
                          ),
                        ),
                      ))
                    ],
                  ),
                  //Image

                  Center(
                    child: Image.asset("assets/images/Ellipse 158.png"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onChecked(bool? value) {
    setState(() {
      ischecked = value!;
    });
  }
}
