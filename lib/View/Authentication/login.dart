import 'package:flutter/material.dart';
import 'package:waiterorder/View/mainscreen/dashboard.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                    width: size.width * 0.6,
                    height: size.width * 0.5,
                    child: Image.asset("images/amorosa.png")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48.0, bottom: 10),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                      fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: size.width * 0.8,
                  child: TextField(
                    onChanged: (v) {},
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey[600]),
                        hintText: "Your email",
                        fillColor: Colors.white10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: size.width * 0.8,
                  child: TextField(
                    onChanged: (v) {},
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey[600]),
                        hintText: "Password",
                        fillColor: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                    width: size.width * 0.8,
                    height: 50,
                    child: ElevatedButton(
                        child: Text('Log in'),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            new MaterialPageRoute(builder: (context) => dashboard()),
                          );                        },
                        onLongPress: () {
                          print('Long press');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
