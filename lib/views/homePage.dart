import 'package:flutter/material.dart';
import '../data/goods.dart';
import '../globalConfig.dart';
 
final List<String> images = [
  'images/banner1.jpg', 
  'images/banner2.jpg', 
  'images/banner3.jpg',
];

class HomePage extends StatefulWidget {
  @override
  Page createState() => new Page();
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
          banner(),
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

  Widget banner() {
    return new Container(
      child: SizedBox.fromSize(
        size: Size.fromHeight(200.0),
        child: PageView.builder(
          controller: PageController(viewportFraction: 0.9),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 8.0,
              ),
              child: GestureDetector(
                onTap: () {},
                child: Material(
                  shadowColor: Colors.black26,
                  elevation: 8.0,
                  borderRadius: BorderRadius.circular(8.0),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
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
