import 'package:flutter/material.dart';
import '../globalConfig.dart';
 
class PresentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
 
    return new Page();
  }
}
 
class Page extends State<PresentPage> {
  @override
  Widget build(BuildContext context) {
    return layout(context);
  }
 
  Widget layout(BuildContext context) {
    return new Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          section(),
          section(),
          section(),
          section()
        ]
      ),
    );
  }
 
  Widget buildAppBar(BuildContext context) {
    return new AppBar(title: const Text('好物', style: const TextStyle(color: Color(0xFF616161))), backgroundColor: Colors.grey[50]);
  }
 
  Widget section() {
    return new Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: new Column(
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.all(15.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Expanded(
                  child: new Text(
                    'LI-NING 李宁',
                    textAlign: TextAlign.left, 
                    style: new TextStyle(
                      fontSize: 22.0, 
                      height: 1.0, 
                      color: GlobalConfig.fontColor, 
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                new Expanded(
                  child: new Container(
                    child: new Text(
                      '27件实测',
                      textAlign: TextAlign.right,
                      style: new TextStyle(
                        color: Colors.red[300],
                        fontWeight: FontWeight.w900
                      )
                    ),
                  ),
                )
            ],
            ),
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(left: 15.0,right: 4.0, bottom: 20.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: <Widget>[
                      new Container(
                        height: 105.00,
                        child: new ClipRRect(
                          borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
                          child: new FittedBox(
                            fit: BoxFit.fitHeight,
                            alignment: Alignment.topCenter,
                            child: new Image.network('https://img.adidas.com.cn/resources/2018kvbanner/sep/feature-tuanyuan.jpg?version=000000'),
                          ),
                        )
                      ),
                      new Text(
                        'AIX MAX 98 龙珠',
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          height: 2.0, 
                          color: GlobalConfig.fontColor, 
                          fontSize: 15.0, 
                          fontWeight: FontWeight.w900,
                        )
                      ),
                      new Text(
                        '￥1149',
                        style: new TextStyle(
                          color: Colors.red, 
                          fontSize: 13.0, 
                        )
                      )
                    ],
                  ),
                )
              ),
              new Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(left: 4.0,right: 15.0, bottom: 20.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: <Widget>[
                      new Container(
                        height: 105.00,
                        child: new ClipRRect(
                          borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
                          child: new FittedBox(
                            fit: BoxFit.fitHeight,
                            alignment: Alignment.topCenter,
                            child: new Image.network('https://img.adidas.com.cn/resources/2017/9/QQ%E5%9B%BE%E7%89%8720171229141554.jpg?version=000000'),
                          ),
                        )
                      ),
                      new Text(
                        'Y-3 KAIWA',
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          height: 2.0, 
                          color: GlobalConfig.fontColor, 
                          fontSize: 15.0, 
                          fontWeight: FontWeight.w900,
                        )
                      ),
                      new Text(
                        '￥3199',
                        style: new TextStyle(
                          color: Colors.red, 
                          fontSize: 13.0, 
                        )
                      )
                    ],
                  ),
                )
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(left: 15.0,right: 4.0, bottom: 20.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: <Widget>[
                      new Container(
                        height: 105.00,
                        child: new ClipRRect(
                          borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
                          child: new FittedBox(
                            fit: BoxFit.fitHeight,
                            alignment: Alignment.topCenter,
                            child: new Image.network('https://img.adidas.com.cn/resources/2018kvbanner/sep/feature-tuanyuan.jpg?version=000000'),
                          ),
                        )
                      ),
                      new Text(
                        'AIX MAX 98 龙珠',
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          height: 2.0, 
                          color: GlobalConfig.fontColor, 
                          fontSize: 15.0, 
                          fontWeight: FontWeight.w900,
                        )
                      ),
                      new Text(
                        '￥1149',
                        style: new TextStyle(
                          color: Colors.red, 
                          fontSize: 13.0, 
                        )
                      )
                    ],
                  ),
                )
              ),
              new Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(left: 4.0,right: 15.0, bottom: 20.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: <Widget>[
                      new Container(
                        height: 105.00,
                        child: new ClipRRect(
                          borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
                          child: new FittedBox(
                            fit: BoxFit.fitHeight,
                            alignment: Alignment.topCenter,
                            child: new Image.network('https://img.adidas.com.cn/resources/2017/9/QQ%E5%9B%BE%E7%89%8720171229141554.jpg?version=000000'),
                          ),
                        )
                      ),
                      new Text(
                        'Y-3 KAIWA',
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          height: 2.0, 
                          color: GlobalConfig.fontColor, 
                          fontSize: 15.0, 
                          fontWeight: FontWeight.w900,
                        )
                      ),
                      new Text(
                        '￥3199',
                        style: new TextStyle(
                          color: Colors.red, 
                          fontSize: 13.0, 
                        )
                      )
                    ],
                  ),
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}
