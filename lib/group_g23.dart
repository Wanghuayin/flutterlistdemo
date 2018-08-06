import 'package:flutter/material.dart';

import 'package:lakes/beef.dart';

import 'package:navbar/navbar.dart' show Navbar;

import 'package:itemguide_3columns/itemguide_3columns.dart'
    show Itemguide_3columns;

import 'package:button/button.dart' show Button;

import 'package:itemfeed/itemfeed.dart' show Itemfeed;

class GroupG23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BeefDeviceData.createSingleton(context);

    return new LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return new Container(
            child: new BeefFlex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      return new Container(
                        child: new Itemfeed(),
//                child: ListView.builder(
//                  itemCount: 100,
//                  itemBuilder: (context, index) {
//                    return ListTile(
//                      title: new Itemfeed(),
//                    );
//                  },
//                ),
                        margin: new BeefEdgeInsets.only(
                          top: 64.50,
                          bottom: -14.50,
                          left: BeefDeviceData.mapWidth(0.00),
                        ),
                      );
                    }),
              ],
            ),
            width: BeefDeviceData.mapWidth(375.00),
            constraints: new BoxConstraints(),
            padding: new BeefEdgeInsets.only(
              top: 0.00,
              bottom: 0.00,
            ),
            decoration: new BoxDecoration(),
          );
        });
  }
}
