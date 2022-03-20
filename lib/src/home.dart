import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heydealer/src/widget/navigation_drawer_widget.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _visibility = false;

  void _show(){
    setState((){
      _visibility=true;
      Timer(Duration(milliseconds: 1500),(){
        Get.toNamed("/find_info");
      });
    });
  }
  void _hide(){
    setState((){
      _visibility=false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "먼저, 내 차 시세를 \n알아볼까요?",
                softWrap: true,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: ("12가 3425"),
                ),
                onEditingComplete: ()=> {},
                onTap: () => {_visibility? _hide() : _show()},
              ),
              Expanded(child: Container(
                // color: Colors.yellow,
                width: 100,
              )),
              Visibility(
                visible: _visibility,
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blueAccent, width: 3)
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "모델명과 연식을\n불러올게요.",
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      Expanded(child: Container(
                        // color: Colors.yellow,
                      )),
                      Container(
                        width: 15.0,
                        height: 15.0,
                        child: LoadingIndicator(
                          indicatorType:Indicator.circleStrokeSpin,
                          colors: [Colors.white],
                        ),
                      )

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
