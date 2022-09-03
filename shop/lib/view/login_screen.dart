import 'package:flutter/material.dart';
import 'package:shop/view/home_screen.dart';
import 'package:shop/service/apiClient.dart';
import 'package:shop/util/constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    var _apiClient = ApiClient();

    // Variable Declaration
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Constant.preimryColor,
                gradient: LinearGradient(colors: [
                  (Constant.preimryColor),
                  (Constant.secondaryColor)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20, top: 20),
                  alignment: Alignment.bottomCenter,
                  child: Text("Login",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                )
              ],
            )),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 70),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      blurRadius: 50,
                      offset: Offset(0, 10),
                      color: Constant.textBoxBackgroundColor)
                ]),
            alignment: Alignment.center,
            child: TextField(
              controller: usernameController,
              cursorColor: Constant.preimryColor,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Constant.preimryColor,
                  ),
                  hintText: "Enter Username",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      blurRadius: 50,
                      offset: Offset(0, 10),
                      color: Constant.textBoxBackgroundColor)
                ]),
            alignment: Alignment.center,
            child: TextField(
              controller: passwordController,
              obscureText: true,
              cursorColor: Constant.preimryColor,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.vpn_key,
                    color: Constant.preimryColor,
                  ),
                  hintText: "Enter Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          GestureDetector(
            onTap: () async {
              String username = usernameController.text.trim();
              String password = passwordController.text.trim();

              if (username.isEmpty || password.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Invalid Username or Password"),
                ));
              } else {
                // If user is valid then navigate to the next screen Home screen
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen(
                              userId: 1,
                              shopId: 1,
                            )));
              }
            },
            child: Container(
                height: 50,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(colors: [
                      (Constant.preimryColor),
                      (Constant.secondaryColor)
                    ]),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 10),
                          color: Constant.textBoxBackgroundColor)
                    ]),
                alignment: Alignment.center,
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: Constant.buttonFontsize),
                )),
          )
        ],
      ),
    ));
  }
}
