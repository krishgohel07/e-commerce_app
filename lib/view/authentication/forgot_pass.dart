import 'package:flutter/material.dart';

class forgot_pass extends StatefulWidget {
  const forgot_pass({super.key});

  @override
  State<forgot_pass> createState() => _forgot_passState();
}

class _forgot_passState extends State<forgot_pass> {
  String email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 750,
          width: double.infinity,
          margin: EdgeInsets.all(15),
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
              TextFormField(
                onChanged: (val) {
                  email = val;
                },
                decoration: InputDecoration(
                    labelText: 'E-mail',
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange))),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "We Will Send the Instruction to reset your password \nthrough the email",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.green,),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('');
                    },
                    child: Center(
                      child: Text(
                        "Reset Password",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "<- Back To Login",
                    style: TextStyle(color: Colors.green),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
