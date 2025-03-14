import 'package:flutter/material.dart';
import 'package:loging_app/features/home/widgets/text_filed_widget.dart';
import 'package:loging_app/features/home/widgets/text_form_filed_widget.dart';

import '../../../core/image_app.dart';

class LoggingScreen extends StatefulWidget {
  LoggingScreen({super.key});

  @override
  State<LoggingScreen> createState() => _LoggingScreenState();
}

class _LoggingScreenState extends State<LoggingScreen> {
  TextEditingController? emailControler = TextEditingController();
  TextEditingController? phoneControler = TextEditingController();
  TextEditingController? nameControler = TextEditingController();
  @override
  void initState() {
    emailControler?.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text('Logging'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(ImageApp.backGroundImage1),
              ),
            ),
          ),
          TextFiledWidget(
            myKeyboard: TextInputType.emailAddress,
            myControler: emailControler,
            myLabel: 'Email',
            myIconData: Icons.email,
          ),
          TextFiledWidget(
              myKeyboard: TextInputType.name,
              myControler: nameControler,
              myLabel: 'Name',
              myIconData: Icons.person),
          TextFormFiledWidget(
              myKeyboard: TextInputType.number,
              myLabel: 'Phone',
              myIconData: Icons.phone,
              validationError: 'Invalid phone number'),
          TextFormFiledWidget(
              myKeyboard: TextInputType.emailAddress,
              myLabel: 'Password',
              myIconData: Icons.security,
              validationError: 'Invalid password'),
          SizedBox(
            height: 20,
          ),
          Text(
            'Welcome ${nameControler!.text}',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Submit'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[200]),
          )
        ],
      ),
    );
  }
}
