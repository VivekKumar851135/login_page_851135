import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.green,
          ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isPressed = true;
  String? text;
  TextEditingController mycontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            //          height: (MediaQuery.of(context).size.height * 0.7),
            //             width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blueAccent.shade100.withOpacity(1),
                  Colors.blueAccent.shade200.withOpacity(0.7),
                  Colors.purpleAccent.shade200.withOpacity(0.7),
                  Colors.purpleAccent.shade100.withOpacity(0.6),
                  // Colors.blueAccent.200.withOpacity(0.3),
                  // Color.fromARGB(95, 223, 64, 251).withOpacity(0.3),
                  // Color.fromARGB(48, 233, 128, 252).withOpacity(0.3),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            // child: Center(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: <Widget>[],
            //   ),
            // ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 75,
                  ),
                  Center(
                    //heightFactor: 5,
                    child: Text(
                      "Hello Again!",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Welcome back you've",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    " been missed!",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: 63,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Enter username",
                          labelStyle: TextStyle(fontSize: 17)),
                    ),
                  ),
                  SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 5),
                        height: 63,
                        width: 340,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                            alignment: AlignmentDirectional.centerEnd,
                            children: [
                              TextField(
                                controller: mycontroller,
                                onChanged: (value) {
                                  text = value;
                                },
                                keyboardType: TextInputType.numberWithOptions(),
                                obscureText: isPressed ? true : false,
                                // keyboardType: TextInputType(),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "Password",
                                    labelStyle: TextStyle(fontSize: 17)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              IconButton(
                                  onPressed: (() {
                                    if (isPressed == true) {
                                      setState(() {
                                        isPressed = false;
                                      });
                                    } else if (isPressed == false) {
                                      setState(() {
                                        isPressed = true;
                                      });
                                    }
                                  }),
                                  icon: isPressed
                                      ? Icon(Icons.visibility_off_outlined)
                                      : Icon(Icons.visibility_outlined)),
                            ]),
                        // child:
                        // TextField(
                        //   keyboardType: TextInputType.numberWithOptions(),
                        //   obscureText: true,
                        //   // keyboardType: TextInputType(),
                        //   decoration: InputDecoration(
                        //       border: InputBorder.none,
                        //       labelText: "Password",
                        //       labelStyle: TextStyle(fontSize: 17)),
                        // ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextButton(
                        onPressed: (() {}),
                        child: Text(
                          "Recovery Password",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  //MaterialButton(onPressed: onPressed),
                  //  TextButton(onPressed: onPressed, child: child)
                  Container(
                    height: 63,
                    width: 340,
                    // color: Colors.pinkAccent,
                    child: ElevatedButton(
                      onPressed: (() {
                        print("$text");
                      }),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.redAccent.shade200),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ))),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Or continue with",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black45),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: (() {
                          print("print");
                        }),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          height: 60,
                          width: 90,
                          child: Image.asset('lib/assets/google.png'),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 3, color: Colors.white54)),
                        ),
                      ),
                      GestureDetector(
                        onTap: (() {
                          print("print");
                        }),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          height: 60,
                          width: 90,
                          child: Image.asset('lib/assets/apple.png'),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 3, color: Colors.white54)),
                        ),
                      ),
                      GestureDetector(
                        onTap: (() {
                          print("print");
                        }),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          height: 60,
                          width: 90,
                          child: Image.asset('lib/assets/meta.png'),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 3, color: Colors.white54)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not a member?",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black45),
                      ),
                      GestureDetector(
                        onTap: (() {
                          print("hii");
                        }),
                        child: Text(
                          " Register Now",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueAccent),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
