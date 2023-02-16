import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                child: Image.asset("assets/images/lose.png"),
              ),
              Text(
                "oops!!",
                style: TextStyle(fontSize: 18, color: Color(0xffd6d6d6)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Sorry You are \n         lose.\n   Next try 👋",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Container(
                  height: 35,
                  width: 100,
                  alignment: Alignment.center,
                  child: Text(
                    "Try Again",
                    style: TextStyle(color: Colors.cyan),
                  ),
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      color: Color(0xff2e1f24),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
