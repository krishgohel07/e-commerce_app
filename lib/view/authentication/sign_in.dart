import 'package:e_commerce_app/provider/signinprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  String number = "";

  @override
  Widget build(BuildContext context) {
    var signin = Provider.of<SigninProvider>(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: 750,
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(125),
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/login/login-removebg-preview.png"))),
            ),
            Row(
              children: [
                Text(
                  "Sign In",
                  style: TextStyle(color: Colors.orange),
                )
              ],
            ),
            TextFormField(
              onChanged: (val) {
                number = val;
              },
              decoration: InputDecoration(
                  labelText: 'Email/Phone Number',
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange))),
            ),
            if (signin.signin.isOn == true && number.length == 10)
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    focusColor: Colors.orange,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange))),
              ),
            if (signin.signin.isOn == true && number.length == 10)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('forgot');
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.green),
                      ))
                ],
              ),
            Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: (signin.signin.isOn == false)
                      ? Colors.black12
                      : Colors.green,
                ),
                margin: EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () {
                    signin.changetrue();
                  },
                  child: Center(
                    child: Text(
                      (signin.signin.isOn == false) ? "Next" : "Login",
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text("Or Sign in with"),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27.5),
                      image: DecorationImage(
                          image: AssetImage("assets/login/ggogle.png"))),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/login/facebook.png"))),
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.5),
                      image: DecorationImage(
                          image: AssetImage("assets/login/twitter.png"))),
                )
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("No account yet?"),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Create one",
                      style: TextStyle(color: Colors.green),
                    ))
              ],
            ),
            if (signin.signin.isOn == true)
              TextButton(
                  onPressed: () {
                    signin.changefalse();
                  },
                  child: Text(
                    "<- Back",
                    style: TextStyle(color: Colors.green),
                  ))
          ],
        ),
      ),
    ));
  }
}
