import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: ListView(
          reverse: true,
          children: <Widget>[
            const SizedBox(height: 48,),
            buildMenuItem(text: "자주묻는 질문"),
            buildMenuItem(text: "앱 정보"),
            buildMenuItem(text: "채팅 문의하기"),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({required String text}){
    final color = Colors.black;
    final hoverColor = Colors.white70;

    return ListTile(
      title: Text(text,style: TextStyle(color: color),),
      trailing: Icon(Icons.arrow_forward_ios),
      hoverColor: hoverColor,
      onTap: (){ ClickButton(type: text); },
    );
  }

  void ClickButton({required String type}){
    switch(type){
      case "자주묻는 질문":
        print("자묻질");
        Get.toNamed("/loading");
        break;
      case "앱 정보":
        print("앱정보");
        break;
      case "채팅 문의하기":
        print("채팅문의");
        break;
      default:
        print("wrong type!");
        break;
    }
  }
}
