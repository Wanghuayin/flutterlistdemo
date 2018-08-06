import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BeefDeviceData {

  /// This method must be called before any constructor get access
  static createSingleton(BuildContext context, {
    double normalizedWidth = 375.0,
  }) {
    if (BeefDeviceData._singleton == null ) {
      BeefDeviceData singleton = new BeefDeviceData._internal(context, normalizedWidth);
      BeefDeviceData._singleton = singleton;
    }
    return  BeefDeviceData._singleton;
  }

  static BeefDeviceData _singleton;

  static mapWidth(double width) =>
    BeefDeviceData._singleton._mqd.size.width * width / BeefDeviceData._singleton._normalizedWidth;

  BeefDeviceData._internal(BuildContext context, double normalizedWidth)
    : _context = context,
      _mqd = MediaQuery.of(context),
      _normalizedWidth = normalizedWidth;

  factory BeefDeviceData() {
    return BeefDeviceData._singleton;
  }

  final BuildContext _context;
  final MediaQueryData _mqd;
  final double _normalizedWidth;
}

class BeefEdgeInsets extends EdgeInsets {
  const BeefEdgeInsets.fromLTRB(
    double left,
    double top,
    double right,
    double bottom)
  :super.fromLTRB(left, top, right, bottom);

  const BeefEdgeInsets.all(double value) : super.all(value);

  const BeefEdgeInsets.only({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0
  }):super.only(left:left, top:top, right:right, bottom:bottom);

  const BeefEdgeInsets.symmetric({ double vertical,double horizontal })
  :super.symmetric(vertical:vertical);


  @override
  bool get isNonNegative => true;
}

class BeefFlex extends Flex {
	BeefFlex({
    Key key,
    @required Axis direction,
    MainAxisAlignment mainAxisAlignment: MainAxisAlignment.start,
    MainAxisSize mainAxisSize: MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment: CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection: VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children: const <Widget>[],
  }): super(
    key: key,
    direction: direction,
    mainAxisAlignment: mainAxisAlignment,
    mainAxisSize: mainAxisSize,
    crossAxisAlignment: crossAxisAlignment,
    textDirection: textDirection,
    verticalDirection: verticalDirection,
    textBaseline: textBaseline,
    children: children
  );

	@override
  RenderFlex createRenderObject(BuildContext context) {
		return new BeefRenderFlex(
      direction: direction,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: getEffectiveTextDirection(context),
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
    );
  }
}

class BeefRenderFlex extends RenderFlex {
  BeefRenderFlex({
    List<RenderBox> children,
    Axis direction: Axis.horizontal,
    MainAxisSize mainAxisSize: MainAxisSize.max,
    MainAxisAlignment mainAxisAlignment: MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment: CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection: VerticalDirection.down,
    TextBaseline textBaseline,
}): super(
    children: children,
    direction: direction,
    mainAxisSize: mainAxisSize,
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
    textDirection: textDirection,
    verticalDirection: verticalDirection,
    textBaseline: textBaseline
  );

  @override
  void paint(PaintingContext context, Offset offset) {
  	defaultPaint(context, offset);
  }
}
