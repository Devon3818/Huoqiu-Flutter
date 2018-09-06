import 'package:flutter/material.dart';
 
class MePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
 
    return new Page();
  }
}
 
class Page extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return layout(context);
  }
 
  Widget layout(BuildContext context) {
    return new Scaffold(
      
    );
  }
 
  Widget header(BuildContext context) {
    return new Image.network(
      'http://i2.yeyou.itc.cn/2014/huoying/hd_20140925/hyimage06.jpg',
 
    );
  }
}
