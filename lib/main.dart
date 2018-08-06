// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;


import './group_g23.dart' show GroupG23;

void main() {
  //debugPaintSizeEnabled = true;
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In our case, the app will start
    // on the FirstScreen Widget
    initialRoute: '/',
    routes: {
      // When we navigate to the "/" route, build the FirstScreen Widget
      '/': (context) => MyApp(),
      // When we navigate to the "/second" route, build the SecondScreen Widget
      '/second': (context) => SecondScreen(),
    },
  ));
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => new _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      // If the lake is currently favorited, unfavorite it.
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
        // Otherwise, favorite it.
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        new Container(
          padding: new EdgeInsets.all(8.0),
          child: new IconButton(
            icon: (_isFavorited
                ? new Icon(Icons.star)
                : new Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        new SizedBox(
          width: 18.0,
          child: new Container(
            child: new Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    Widget titleSection = new Container(
//      padding: const EdgeInsets.all(64.0),
//      child: new Row(
//        children: [
//          new Expanded(
//            child: new Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: [
//                new Container(
//                  padding: const EdgeInsets.only(bottom: 8.0),
//                  child: new Text(
//                    'Oeschinen Lake Campground',
//                    style: new TextStyle(
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                ),
//                new Text(
//                  'Kandersteg, Switzerland',
//                  style: new TextStyle(
//                    color: Colors.grey[500],
//                  ),
//                ),
//              ],
//            ),
//          ),
//          new FavoriteWidget(),
//        ],
//      ),
//    );

//    Column buildButtonColumn(IconData icon, String label) {
//      Color color = Theme.of(context).primaryColor;
//
//      return new Column(
//        mainAxisSize: MainAxisSize.min,
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: [
//          new Icon(icon, color: color),
//          new Container(
//            margin: const EdgeInsets.only(top: 8.0),
//            child: new Text(
//              label,
//              style: new TextStyle(
//                fontSize: 12.0,
//                fontWeight: FontWeight.w400,
//                color: color,
//              ),
//            ),
//          ),
//        ],
//      );
//    }
//
//    Widget buttonSection = new Container(
//      child: new Row(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        children: [
//          buildButtonColumn(Icons.call, 'CALL'),
//          buildButtonColumn(Icons.near_me, 'ROUTE'),
//          buildButtonColumn(Icons.share, 'SHARE'),
//        ],
//      ),
//    );
//
//    Widget textSection = new Container(
//      padding: const EdgeInsets.all(32.0),
//      child: new Text(
//        '''
//Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
//        ''',
//        softWrap: true,
//      ),
//    );

    Widget navigationButton = new Container(
      child: RaisedButton(
        child: Text('Launch screen'),
        onPressed: () {
          // Navigate to second screen when tapped!
          Navigator.pushNamed(context, '/second');
        },
      ),
    );
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('Top Lakes'),
//        ),
        body: new ListView(
          children: [
//            new Image.asset(
//              'images/lake.jpg',
//              height: 240.0,
//              fit: BoxFit.cover,
//            ),
//            titleSection,
//            buttonSection,
//            textSection,
            navigationButton,
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final List<String> items = List<String>.generate(100, (i) => "Item $i");
  List<String> growableList = [
    'https://gw.alicdn.com/bao/uploaded/TB1qJHda6fguuRjy1zeXXb0KFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1OabszNuTBuNkHFNRXXc9qpXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1dAZmzIuYBuNkSmRyXXcA3pXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1GqXYIkCWBuNjy0FaXXXUlXXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1ET.PH3mTBuNjy1XbXXaMrVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1Ih44IeuSBuNjSsziXXbq8pXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1nZ5CIhGYBuNjy0FnXXX5lpXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1twj.H4SYBuNjSsphXXbGvVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1u2NeIeuSBuNjy1XcXXcYjFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1NqFez8yWBuNkSmFPXXXguVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1Hw80Ib1YBuNjSszhXXcUsFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1uuK6a56guuRkSmLyXXculFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1KZ1CIhGYBuNjy0FnXXX5lpXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1.TlXIkyWBuNjy0FpXXassXXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1UdRDIh1YBuNjy1zcXXbNcXXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1isGgIbSYBuNjSspfXXcZCpXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1aM4XIeOSBuNjy0FdXXbDnVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB16oD2IamWBuNjy1XaXXXCbXXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB10UD2IamWBuNjy1XaXXXCbXXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1l0Tca56guuRkSnb4XXbu4XXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1BN4.Ib1YBuNjSszeXXablFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1nw0XIeOSBuNjy0FdXXbDnVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB17.z2IamWBuNjy1XaXXXCbXXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1XgZazLiSBuNkSnhJXXbDcpXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1aMZazLiSBuNkSnhJXXbDcpXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB14JE.H1uSBuNjSsplXXbe8pXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1E5irzOCYBuNkHFCcXXcHtVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1r0RDIh1YBuNjy1zcXXbNcXXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1fNS8a6fguuRjSspkXXXchpXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1AINFIbuWBuNjSszgXXb8jVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1V.RAIeSSBuNjy0FlXXbBpVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1lJ3AzOOYBuNjSsD4XXbSkFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1vcJFIbuWBuNjSszgXXb8jVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1eN4.Ib1YBuNjSszeXXablFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1yeG6a56guuRkSmLyXXculFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB10axez8yWBuNkSmFPXXXguVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB12X4YIkCWBuNjy0FaXXXUlXXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1Vwb.H4SYBuNjSsphXXbGvVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1PyKcIeySBuNjy1zdXXXPxFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1LZsCH25TBuNjSspcXXbnGFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB13CJ3IkOWBuNjSsppXXXPgpXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1PIFFIbuWBuNjSszgXXb8jVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB18nbBHWSWBuNjSsrbXXa0mVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1R2BeIeuSBuNjy1XcXXcYjFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1gaxez8yWBuNkSmFPXXXguVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1qKi4a6rguuRjy0FeXXXcbFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1pWxez8yWBuNkSmFPXXXguVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1HIygIbSYBuNjSspfXXcZCpXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1kgUazLiSBuNkSnhJXXbDcpXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1gn0fIf9TBuNjy0FcXXbeiFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1Zlm9a6bguuRkHFrdXXb.LFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1N0Hca56guuRkSnb4XXbu4XXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1y2_.H4SYBuNjSsphXXbGvVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1tOGcIeySBuNjy1zdXXXPxFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1X3gzH7KWBuNjy1zjXXcOypXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB16kwEH1GSBuNjSspbXXciipXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1fwgzH7KWBuNjy1zjXXcOypXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1iscYzLuSBuNkHFqDXXXfhVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1KISCIhGYBuNjy0FnXXX5lpXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1fgVXIeOSBuNjy0FdXXbDnVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1vcugIbSYBuNjSspfXXcZCpXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB169_BHWSWBuNjSsrbXXa0mVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1c5arzOCYBuNkHFCcXXcHtVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB10AImzIuYBuNkSmRyXXcA3pXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1L6JoIk9WBuNjSspeXXaz5VXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1vyJFIXOWBuNjy0FiXXXFxVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB14mdMIhSYBuNjSspjXXX73VXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1isSCIhGYBuNjy0FnXXX5lpXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1gTVfIf9TBuNjy0FcXXbeiFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1iZSCIhGYBuNjy0FnXXX5lpXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB15dQAzOOYBuNjSsD4XXbSkFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1VRi9a6bguuRkHFrdXXb.LFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1Z_XXIkyWBuNjy0FpXXassXXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1pJFDIh1YBuNjy1zcXXbNcXXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1cb.YzLuSBuNkHFqDXXXfhVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1CJFDIh1YBuNjy1zcXXbNcXXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1andXIkyWBuNjy0FpXXassXXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1HTRfIf9TBuNjy0FcXXbeiFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1g7wEH1GSBuNjSspbXXciipXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1EEr2IamWBuNjy1XaXXXCbXXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1Do.NzRmWBuNkSndVXXcsApXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1Scb.zIyYBuNkSnfoXXcWgVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1GH7YzLuSBuNkHFqDXXXfhVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1EIqgIbSYBuNjSspfXXcZCpXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1swNXIeOSBuNjy0FdXXbDnVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1eIBFIbuWBuNjSszgXXb8jVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1cIOCIhGYBuNjy0FnXXX5lpXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1dWXrIb5YBuNjSspoXXbeNFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1Xor2IamWBuNjy1XaXXXCbXXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1fuy6a56guuRkSmLyXXculFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1K2peIeuSBuNjy1XcXXcYjFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1JcmgIbSYBuNjSspfXXcZCpXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB15TJfIf9TBuNjy0FcXXbeiFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1Tx5rzOCYBuNkHFCcXXcHtVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB190MAzOOYBuNjSsD4XXbSkFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB10iBFIXOWBuNjy0FiXXXFxVXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1z5ycIeySBuNjy1zdXXXPxFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1.XRYIkCWBuNjy0FaXXXUlXXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1qhR.Ib1YBuNjSszeXXablFXa-1248-936.jpg',
    'https://gw.alicdn.com/bao/uploaded/TB1PyycIeySBuNjy1zdXXXPxFXa-1248-936.jpg'
  ];
//  SecondScreen({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
//            key: new Key('list-$index'),
            title: new Container(
              decoration: new BoxDecoration(border: new Border(top: new BorderSide(width: 1.0, color: Colors.grey.shade300))),
              padding: EdgeInsets.only(top: 7.0),
              child: new Row(
                children: <Widget>[
                  new Container(
                    child: Image.network(
//                      'http://gw.alicdn.com/bao/uploaded/LB1x_iGACBYBeNjy0FeXXbnmFXa-4160-3120.jpg',
                      'http://gw.alicdn.com/mt/TB1p6R6G41YBuNjy1zcXXbNcXXa-220-120.jpg',
//                        growableList[index],
                      width: 220.0,
                      height: 120.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(left: 10.0),
                    child: new Column(
                      children: <Widget>[
                        new Padding(padding: new EdgeInsets.fromLTRB(50.0, 1.0, 1.0, 1.0)),
                        new Text("title $index", style: new TextStyle(fontSize:14.0, color: Colors.red),),
                        new Padding(padding: new EdgeInsets.fromLTRB(1.0, 20.0, 1.0, 1.0)),
                        new Text("desc $index", style: new TextStyle(fontSize:12.0, color: Colors.blue),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );

}}