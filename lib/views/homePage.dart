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
    return new AppBar(title: const Text('推荐', style: const TextStyle(color: Color(0xFF616161))), backgroundColor: Colors.white);
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
              height: 250.0,
              decoration: new BoxDecoration(
                image: new DecorationImage(image: new NetworkImage(goods.banner)),
                borderRadius: new BorderRadius.all(
                  const Radius.circular(8.0),
                ), 
              )
            ),
            new Align(
              alignment: Alignment.centerLeft,
              child: new Text(
                goods.title,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: new TextStyle(height: 1.5, color: GlobalConfig.fontColor, fontSize: 20.0, fontWeight: FontWeight.w900,)
              ),
            ),
            new Align(
              alignment: Alignment.centerLeft,
              child: new Text(goods.likeNum.toString() + " 点赞 · " + goods.commentNum.toString() + "点评", style: new TextStyle(color: Colors.black38, height: 2.0))
            )
          ]
        ),
      ),
    );
  }
}
