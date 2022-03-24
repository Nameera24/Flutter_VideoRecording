import 'package:flutter/material.dart';
import 'package:video/Custom%20UI/ButtonCard.dart';
import 'package:video/Models/Chatmodel.dart';
import 'package:video/Screens/HomeScreen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late ChatModel sourceChat;
  List<ChatModel> chatmodels = [
    ChatModel(
      name: "Ali",
      isGroup: false,
      currentMessage: "Hello",
      time: "4:00",
      icon: "person.svg",
      id: 1,
      status: '',
    ),
    ChatModel(
      name: "Nameera",
      isGroup: false,
      currentMessage: "Hi ",
      time: "13:00",
      icon: "person.svg",
      id: 2,
      status: '',
    ),
    ChatModel(
      name: "Wania",
      isGroup: false,
      currentMessage: "Hi Dev Stack",
      time: "8:00",
      icon: "person.svg",
      id: 3,
      status: '',
    ),
    ChatModel(
      name: "Balram Rathore",
      isGroup: false,
      currentMessage: "how are you?",
      time: "2:00",
      icon: "person.svg",
      id: 4,
      status: '',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chatmodels.length,
          itemBuilder: (contex, index) {
            return InkWell(
              onTap: () {
                sourceChat = chatmodels.removeAt(index);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (builder) {
                  return Homescreen(
                    chatmodels: chatmodels,
                    sourchat: sourceChat,
                  );
                }));
              },
              child: ButtonCard(
                name: chatmodels[index].name,
                icon: Icons.person,
              ),
            );
          }),
    );
  }
}
