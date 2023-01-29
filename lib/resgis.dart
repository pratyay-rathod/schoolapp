import 'package:flutter/material.dart';
import 'package:myschoolapp/default/widgets.dart';
import 'package:myschoolapp/navscreen.dart';
import 'package:myschoolapp/widgets/default.dart';


class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  MyConfig _myConfig = MyConfig();
  @override
  void initState() {
    super.initState();
  }

  TextEditingController nameControler = TextEditingController();
  TextEditingController emailControler = TextEditingController();
  TextEditingController cellphoneControler = TextEditingController();
  TextEditingController passControler = TextEditingController();
  TextEditingController addressControler = TextEditingController();
  TextEditingController zipcodeControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Image.asset("assets/logo3.png"),
              SizedBox(
                height: _myConfig.myHeight,
              ),
              MyInputField(
                  keyboardtype: TextInputType.text,
                  hinttext: "Full Name",
                  hidedata: false,
                  mycontroller: nameControler,
                  myicon: Icon(
                    Icons.person,
                    color: _myConfig.myButtonbackgroundColor,
                    size: _myConfig.myIconSize,
                  )),
              SizedBox(
                height: _myConfig.myHeight,
              ),
              MyInputField(
                  keyboardtype: TextInputType.emailAddress,
                  hinttext: "Email",
                  hidedata: false,
                  mycontroller: emailControler,
                  myicon: Icon(
                    Icons.email_outlined,
                    color: _myConfig.myButtonbackgroundColor,
                    size: _myConfig.myIconSize,
                  )),
              SizedBox(
                height: _myConfig.myHeight,
              ),
              MyInputField(
                  keyboardtype: TextInputType.number,
                  hinttext: "Mobile Number",
                  hidedata: false,
                  mycontroller: cellphoneControler,
                  myicon: Icon(
                    Icons.phone_in_talk_rounded,
                    color: _myConfig.myButtonbackgroundColor,
                    size: _myConfig.myIconSize,
                  )),
              SizedBox(
                height: _myConfig.myHeight,
              ),
              MyInputField(
                  keyboardtype: TextInputType.text,
                  hinttext: "Password",
                  hidedata: true,
                  mycontroller: passControler,
                  myicon: Icon(
                    Icons.lock_outline_rounded,
                    color: _myConfig.myButtonbackgroundColor,
                    size: _myConfig.myIconSize,
                  )),
              SizedBox(
                height: _myConfig.myHeight,
              ),
              MyInputField(
                  keyboardtype: TextInputType.streetAddress,
                  hinttext: "Address",
                  hidedata: false,
                  mycontroller: addressControler,
                  myicon: Icon(
                    Icons.location_on,
                    color: _myConfig.myButtonbackgroundColor,
                    size: _myConfig.myIconSize,
                  )),
              SizedBox(
                height: _myConfig.myHeight,
              ),
              MyInputField(
                  keyboardtype: TextInputType.number,
                  hinttext: "Zip Code",
                  hidedata: false,
                  mycontroller: zipcodeControler,
                  myicon: Icon(
                    Icons.map_outlined,
                    color: _myConfig.myButtonbackgroundColor,
                    size: _myConfig.myIconSize,
                  )),
              SizedBox(
                height: _myConfig.myHeight,
              ),
              MyButton(
                btnwidth:
                    MediaQuery.of(context).size.width - _myConfig.myMargin * 4,
                bgcolor: _myConfig.myButtonbackgroundColor,
                btntextsize: 20,
                buttontext: "SIGN UP",
                textcolor: _myConfig.myButtonTextColor,
                onTap: () async {
                  _submit();
                },
              ),
              SizedBox(
                height: _myConfig.myHeight,
              ),
              TermCondition(),
              SizedBox(
                height: _myConfig.myHeight,
              ),
            ],
          ),
        ),
      )),
    );
  }

  void _submit() async {
    if (nameControler.text.isEmpty) {
      _myConfig.toast(msg: "Please Enter Full Name");
      return;
    }

    if (!_myConfig.nameValidator(value: nameControler.text)) {
      _myConfig.toast(msg: "Please Enter Full Name");
      return;
    }

    if (emailControler.text.isEmpty) {
      _myConfig.toast(msg: "Please Enter Email");
      return;
    }

    if (!_myConfig.emailValidator(value: emailControler.text)) {
      _myConfig.toast(msg: "Please Enter Valid Email");
      return;
    }

    if (cellphoneControler.text.isEmpty) {
      _myConfig.toast(msg: "Please Enter Cell Phone");
      return;
    }

    if (addressControler.text.isEmpty) {
      _myConfig.toast(msg: "Please Enter Address");
      return;
    }
    if (zipcodeControler.text.isEmpty) {
      _myConfig.toast(msg: "Please Enter Zip Code");
      return;
    }

    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => bnavbar())));
  }
}
