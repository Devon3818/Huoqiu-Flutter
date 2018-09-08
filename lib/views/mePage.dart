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
      body: new ListView(
        children: <Widget>[
          tabSetting('会员中心','images/huiyuan.png'),
          tabSetting('我的订单','images/order.png'),
          tabSetting('我的售后','images/sales.png'),
          tabSetting('消息中心','images/message.png'),
          tabSetting('我的足迹','images/history.png'),
          tabSetting('管理地址','images/address.png'),
          tabSetting('分享有奖','images/prents2.png'),
          tabSetting('优惠券','images/cpours.png'),
          tabSetting('联系客服','images/kefu.png'),
          tabSetting('意见反馈','images/fankui.png'),
          tabSetting('供应商入驻申请','images/shop.png'),
          tabSetting('买手入驻申请','images/open.png'),
          tabSetting('设置','images/setting.png')
        ],
      )
    );
  }

  Image getTabImage(path) {
    return new Image.asset(path, width: 24.0, height: 24.0);
  }
 
  Widget tabSetting(String title, String path) {
    return new Container(
      decoration: new BoxDecoration(
        color: Colors.white
      ),
      child: new FlatButton(
        padding: const EdgeInsets.all(20.0),
        onPressed: (){},
        child: new Row(
          children: <Widget>[
            new Image.asset(path, width: 26.0, height: 26.0),
            new Text(
              '   ' + title,
              style: new TextStyle(
                color: Colors.black45,
                fontSize: 18.0
              )
            ),
            new Expanded(
              child: new Align(
                alignment: Alignment.centerRight,
                child:  new Image.asset('images/more.png', width: 18.0, height: 18.0),
              )
            )
          ],
        ),
      ),
    );
  }
}
