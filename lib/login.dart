import 'package:flutter/material.dart';

import 'package:myschoolapp/account.dart';
import 'package:myschoolapp/navscreen.dart';
import 'package:myschoolapp/resgis.dart';
import 'package:myschoolapp/widgets/default.dart';
import 'package:myschoolapp/widgets/widgets.dart';

final countrycode = "+91";

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // MyConfig _myConfig = MyConfig();
  MyConfig _myConfig = MyConfig();

  TextEditingController cellphoneControler = TextEditingController();

  String devicetokenid = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Image(image: AssetImage("assets/logo3.png")),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.0, bottom: 20.0),
                    child: MyInputField(
                        keyboardtype: TextInputType.number,
                        myicon: Icon(Icons.phone_in_talk_outlined,
                            color: Colors.purple),
                        mycontroller: cellphoneControler,
                        hidedata: false,
                        hinttext: "Enter Phone"),
                  ),
                  Container(
                    child: MyButton(
                        btnwidth: 280,
                        btntextsize: 14,
                        buttontext: "SEND OTP",
                        textcolor: Colors.black,
                        onTap: () async {
                          _submit();
                        },
                        bgcolor: Color.fromARGB(255, 133, 29, 243)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15.0),
                    child: MyButton(
                        btnwidth: 280,
                        btntextsize: 14,
                        buttontext: "CONTINUE WITHOUT LOGIN",
                        textcolor: Colors.black,
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => bnavbar()));
                        },
                        bgcolor: Color.fromARGB(255, 133, 29, 243)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'by signing, you agree to our ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 3, 0, 0), fontSize: 10),
                        /*defining default style is optional */
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Terms and Conditions',
                              style: TextStyle(
                                color: Color.fromARGB(255, 226, 34, 34),
                                fontSize: 10,
                                decoration: TextDecoration.underline,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submit() async {
    if (cellphoneControler.text.isEmpty) {
      _myConfig.toast(msg: "Please Enter Cell Phone");
      return;
    }
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => RegisterScreen())));
  }
}
