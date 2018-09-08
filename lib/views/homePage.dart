import 'package:flutter/material.dart';
import '../data/goods.dart';
import '../globalConfig.dart';
 
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
 
    return new Page();
  }
}
 
class Page extends State<HomePage> {
  
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
          goodsCard(goodsList[0]),
          goodsCard(goodsList[1]),
          goodsCard(goodsList[2]),
          goodsCard(goodsList[3]),
          goodsCard(goodsList[0]),
          goodsCard(goodsList[1]),
          goodsCard(goodsList[2]),
          goodsCard(goodsList[3]),
          goodsCard(goodsList[0]),
          goodsCard(goodsList[1]),
          goodsCard(goodsList[2]),
          goodsCard(goodsList[3]),
          goodsCard(goodsList[0]),
          goodsCard(goodsList[1]),
          goodsCard(goodsList[2]),
          goodsCard(goodsList[3])
        ],
      )
    );
  }
 
  Widget buildAppBar(BuildContext context) {
    return new AppBar(
      title: const Text('推荐', style: const TextStyle(color: Color(0xFF616161))),
      backgroundColor: Colors.white
    );
  }

  Widget goodsCard(Goods goods) {
    return new Container(
      child: new FlatButton(
        padding: const EdgeInsets.all(20.0),
        onPressed: (){},
        child: new Column(
          children: <Widget>[
            new Container(
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    child: new CircleAvatar(
                      backgroundImage: new NetworkImage(goods.headUrl),
                      radius: 18.0
                    )
                  ),
                  new Text(' ' + goods.user , style: new TextStyle(color: Colors.black54)),
                ]
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
              width: 500.00,
              height: 200.00,
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.all(
                  const Radius.circular(8.0),
                ), 
              ),
              child: new FittedBox(
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
                child: new Image.network(goods.banner),
              )
            ),
            new Align(
              alignment: Alignment.centerLeft,
              child: new Text(
                goods.title,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: new TextStyle(height: 1.0, color: GlobalConfig.fontColor, fontSize: 15.0, fontWeight: FontWeight.w900,)
              ),
            ),
            new Container(
              child: new Row(
                children: <Widget>[
                  new Align(
                    alignment: Alignment.centerLeft,
                    child: new Text(goods.likeNum.toString() + " 点赞 · " + goods.commentNum.toString() + "点评", style: new TextStyle(color: Colors.black38, height: 2.0))
                  ),
                  new Expanded(
                    child: new Align(
                      alignment: Alignment.centerRight,
                      child: new Text(goods.time.toString(), style: new TextStyle(color: Colors.black38, height: 2.0))
                    )
                  )
                ],
              )
            ),
          ]
        ),
      ),
    );
  }
}
