import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
                height: 70,
                width: 70,
                child: Image.asset("assets/images/fire-cracker.png"),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Your Answer is Correct \n    congratulations 🎉",
                style: TextStyle(fontSize: 18, color: Colors.redAccent),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "You Won the \n    \$100000",
                style: TextStyle(fontSize: 18, color: Color(0xffc78640)),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 35,
                  width: 100,
                  alignment: Alignment.center,
                  child: Text(
                    "NEXT",
                    style: TextStyle(color: Colors.white
                    ),
                  ),
                  decoration: BoxDecoration(
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
