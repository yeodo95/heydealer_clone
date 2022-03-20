import 'package:flutter/material.dart';
import 'package:heydealer/src/widget/navigation_drawer_widget.dart';
import 'package:loading_indicator/loading_indicator.dart';

class FindInfo extends StatefulWidget {
  const FindInfo({Key? key}) : super(key: key);

  @override
  State<FindInfo> createState() => _FindInfoState();
}

class _FindInfoState extends State<FindInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        foregroundColor: Colors.black,
        title: Row(
          children: [
            Text("번호판"),
            TextButton.icon(
              onPressed: (){},
              icon: Icon(Icons.replay, size: 15.0,),
              label: Text("수정",textAlign: TextAlign.end,),
              style: TextButton.styleFrom(
              )
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Expanded(child: Container(
                // color: Colors.yellow,
                width: 100,
              )),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blueAccent, width: 3)
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "✋ 소유자명을 알려주세요!",
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        Expanded(child: Container()),
                        IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            color: Colors.white,
                            hoverColor: Colors.white60,
                            onPressed: (){ print("button");},
                            icon: Icon(Icons.help_outline)
                        ),
                      ],
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: ("홍 길 동"),
                        ),
                        onEditingComplete: ()=> {},
                        onTap: () => {},
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "리스 또는 법인 소유 차량  >",
                        style: new TextStyle(
                          color: Colors.white60,
                          fontSize: 12.0
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
