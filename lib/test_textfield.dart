import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TestTextfield extends StatefulWidget {
  @override
  _TestTextfieldState createState() => _TestTextfieldState();
}

class _TestTextfieldState extends State<TestTextfield> {
  @override
  void initState() {
    super.initState();
    // nameController.text;
  }

  String test = 'Johnson';

  TextEditingController nameController = TextEditingController();
  TextStyle style;
  Color _silverAppbarRegister = Color.fromRGBO(40, 3, 65, 3);
  Color _textp = Color.fromRGBO(151, 142, 167, 3);
  // Widget nameText(
  //     // String firstName ,
  //     ) {
  //   return Theme(
  //     data: new ThemeData(
  //         primaryColor: Colors.green,
  //         accentColor: Colors.red,
  //         hintColor: Colors.green),
  //     child: TextFormField(
  //       // initialValue: "Jonhson",
  //       // enabled: false,

  //       readOnly: true,

  //       controller: nameController,

  //       // initialValue: 'initial value',
  //       keyboardType: TextInputType.text,
  //       decoration: InputDecoration(
  //         focusedBorder: InputBorder.none,
  //         enabledBorder: InputBorder.none,
  //         errorBorder: InputBorder.none,
  //         disabledBorder: InputBorder.none,
  //         labelText: 'Name*',
  //         labelStyle: TextStyle(
  //           color: _textp,
  //           fontFamily: 'Kanit_Regular',
  //         ),
  //       ),
  //       onTap: () {
  //         SystemChannels.textInput.invokeMethod('TextInput.hide');
  //       },
  //       onChanged: (value) {
  //         nameController.text = "Jonhson";
  //       },

  //       style: TextStyle(
  //         color: _silverAppbarRegister,
  //         fontFamily: 'Kanit_Regular',
  //         fontSize: 16.0,
  //       ),
  //       validator: (String value) {
  //         if (value.isEmpty) {
  //           return value = 'Johnson';
  //         } else {
  //           return null;
  //         }
  //       },
  //     ),
  //   );
  // }
  Widget nameText() {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      textInputAction: TextInputAction.newline,
      decoration: InputDecoration(
        labelText: 'Name*',
        labelStyle: TextStyle(
          fontFamily: 'Kanit_Regular',
          fontSize: 14.0,
          color: Color(0xff968BA4),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
      readOnly: true,
      minLines: null,
      maxLines: null,

      // expands: true,
      // maxLength: 50,
      initialValue: 'Johnson Johnson Johnson Johnson',
      style: TextStyle(
        fontFamily: 'Kanit_Regular',
        fontSize: 18,
        color: Color(0xFF280041),
      ),
    );
  }

  Widget passwordText() {
    return TextFormField(
      minLines: null,
      maxLines: null,
      obscuringCharacter: "*",
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(
          fontFamily: 'Kanit_Regular',
          fontSize: 14.0,
          color: Color(0xff968BA4),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
      readOnly: true,
      initialValue: 'Johnson',
      style: TextStyle(
        fontFamily: 'Kanit_Regular',
        fontSize: 18,
        color: Color(0xFF280041),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Container(
              child: Column(
            children: [
              nameText(),
              passwordText(),
              // String name = nameController.text;
            ],
          )),
        ),
      ),
    );
  }
}
