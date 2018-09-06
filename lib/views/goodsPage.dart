import 'package:flutter/material.dart';
 
class GoodsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
 
    return new Page();
  }
}
 
class Page extends State<GoodsPage> {
  @override
  Widget build(BuildContext context) {
    return layout(context);
  }
 
  Widget layout(BuildContext context) {
    return new Scaffold(
      appBar: buildAppBar(context)
    );
  }
 
  Widget buildAppBar(BuildContext context) {
    return new AppBar(
      title: const Text('买手', style: const TextStyle(color: Color(0xFF616161))),
      backgroundColor: Colors.grey[50]
    );
  }
 
  Widget header(BuildContext context) {
    return new Image.network(
      'http://i2.yeyou.itc.cn/2014/huoying/hd_20140925/hyimage06.jpg',
 
    );
  }
}
