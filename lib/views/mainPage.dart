import 'package:flutter/material.dart';
import './homePage.dart';
import './mePage.dart';
import './goodsPage.dart';
import './presentPage.dart';

class MainPage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new MaterialApp(
        debugShowCheckedModeBanner: false, home: new MainPageWidget()
      );
    }
}

class MainPageWidget extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new MainPageState();
    }
}

class MainPageState extends State<MainPageWidget> {
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['推荐','买手','好物','我'];

  var _pageList;

  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex], style: new TextStyle(fontSize: 14.0, color: Color.fromRGBO(238, 92, 122, 1.00)));
    }
    return new Text(appBarTitles[curIndex], style: new TextStyle(fontSize: 14.0, color: Color.fromRGBO(77, 77, 77, 1.00)));
  }

  Image getTabImage(path) {
    return new Image.asset(path, width: 24.0, height: 24.0);
  }

  void initData() {
    tabImages = [
      [getTabImage('images/hot.png'), getTabImage('images/hot_selected.png')],
      [getTabImage('images/goods.png'), getTabImage('images/goods_selected.png')],
      [getTabImage('images/present.png'), getTabImage('images/present_selected.png')],
      [getTabImage('images/me.png'), getTabImage('images/me_selected.png')]
    ];
    
    _pageList = [
      new HomePage(),
      new GoodsPage(),
      new PresentPage(),
      new MePage()
    ];
  }

  @override
    Widget build(BuildContext context) {
      initData();
      // TODO: implement build
      return Scaffold(
        body: _pageList[_tabIndex],
        bottomNavigationBar: new BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
              icon: getTabIcon(0),
              title: getTabTitle(0),
            ),
            new BottomNavigationBarItem(
              icon: getTabIcon(1),
              title: getTabTitle(1)
            ),
            new BottomNavigationBarItem(
              icon: getTabIcon(2),
              title: getTabTitle(2)
            ),
            new BottomNavigationBarItem(
              icon: getTabIcon(3),
              title: getTabTitle(3)
            )
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _tabIndex,
          iconSize: 24.0,
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
        ),
      );
    }
}