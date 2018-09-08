import 'package:flutter/material.dart';
import '../globalConfig.dart';
import '../data/shop.dart';
 
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
      appBar: buildAppBar(context),
      backgroundColor: Colors.white,
      body: new ListView(
        children: <Widget>[
          card(shoplist[0]),
          card(shoplist[1]),
          card(shoplist[2]),
          card(shoplist[3]),
          card(shoplist[4]),
          card(shoplist[5]),
          card(shoplist[0]),
          card(shoplist[1]),
          card(shoplist[2]),
          card(shoplist[3]),
          card(shoplist[4]),
          card(shoplist[5]),
        ],
      ),
    );
  }
 
  Widget buildAppBar(BuildContext context) {
    return new AppBar(
      title: const Text('买手', style: const TextStyle(color: Color(0xFF616161))),
      backgroundColor: Colors.white
    );
  }
  
  Widget card(Shop shop) {
    return new FlatButton(
      padding: const EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
      onPressed: (){},
      child: new Card(
        elevation: 3.0,
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Container(
              width: 500.00,
              height: 160.00,
              child: new FittedBox(
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
                child: new Image.network(shop.banner),
              )
            ),
            new Container(
              padding: const EdgeInsets.all(14.0),
              child: new Row(
                children: <Widget>[
                  new Container(
                    child: new CircleAvatar(
                      backgroundImage: new NetworkImage(shop.logo),
                      radius: 20.0
                    )
                  ),
                  new Container(
                    width: 200.00,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          child: new Text(
                            shop.name,
                            style: new TextStyle(height: 1.0, color: GlobalConfig.fontColor, fontSize: 15.0, fontWeight: FontWeight.w900,)
                          ),
                          padding: new EdgeInsets.only(left: 10.0),
                        ),
                        new Container(
                          child: new Row(
                            children: <Widget>[
                              new Container(
                                padding: new EdgeInsets.only(left: 5.0, right: 5.0, top: 4.0, bottom: 4.0),
                                decoration: new BoxDecoration(
                                  color: Colors.grey[100],
                                ),
                                child: new Text(shop.tag1, style: new TextStyle(fontSize: 7.0)),
                                margin: const EdgeInsets.only(right: 8.0)
                              ),
                              new Container(
                                padding: new EdgeInsets.only(left: 5.0, right: 5.0, top: 4.0, bottom: 4.0),
                                decoration: new BoxDecoration(
                                  color: Colors.grey[100],
                                ),
                                child: new Text(shop.tag2, style: new TextStyle(fontSize: 7.0)),
                                margin: const EdgeInsets.only(right: 8.0)
                              ),
                            ],
                          ),
                          padding: new EdgeInsets.only(left: 10.0, top: 4.0, bottom: 0.0, right: 10.0),
                        ),
                      ],
                    )
                  ),
                  new Container(
                    width: 0.7,
                    height: 35.0,
                    color: Colors.black12,
                    margin: EdgeInsets.only(left: 12.0),
                  ),
                  new Expanded(
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          shop.fansNum,
                          style: new TextStyle(height: 1.5, color: GlobalConfig.fontColor, fontSize: 13.0, fontWeight: FontWeight.w900,)
                        ),
                        new Text('粉丝', style: new TextStyle(color: Colors.black38, fontSize: 10.0))
                      ]
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  
}
