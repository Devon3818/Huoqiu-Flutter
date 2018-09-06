import 'package:flutter/material.dart';
 
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
 
    return new Page();
  }
}
 
class Page extends State<HomePage> with AutomaticKeepAliveClientMixin {
  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      print('HomePageState initState');
    }

  @override
    bool get wantKeepAlive => true;
  
  @override
  Widget build(BuildContext context) {
    return layout(context);
  }

  Widget layout(BuildContext context) {
    return new Scaffold(
      appBar: buildAppBar(context),
      body: new ListView(
        children: <Widget>[
          card(),
          card(),
          card(),
          card(),
          card(),
          card(),
          card(),
          card(),
          card(),
          card(),
          card(),
          card(),
          card(),
          card(),
        ],
      )
    );
  }
 
  Widget buildAppBar(BuildContext context) {
    return new AppBar(title: const Text('推荐', style: const TextStyle(color: Color(0xFF616161))), backgroundColor: Colors.grey[50]);
  }
 
  Widget card() {
    return new Card(
      child: new Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
            leading: const Icon(Icons.album),
            title: const Text('The Enchanted Nightingale'),
            subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          )
        ]
      )
    );
  }
}
