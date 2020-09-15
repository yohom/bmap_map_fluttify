import 'package:bmap_map_fluttify_example/map/location/location.screen.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:demo_widgets/demo_widgets.dart';
import 'package:flutter/material.dart';

import 'create_map/create_map.screen.dart';
import 'draw_on_map/draw_arc.screen.dart';
import 'draw_on_map/draw_circle.screen.dart';
import 'draw_on_map/draw_point.screen.dart';
import 'draw_on_map/draw_polygon.screen.dart';
import 'draw_on_map/draw_polyline.screen.dart';
import 'interact_with_map/code_interaction.screen.dart';
import 'interact_with_map/control_gesture.screen.dart';
import 'interact_with_map/screen_shot_screen.dart';

class MapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        FunctionGroup(
          headLabel: '创建地图',
          children: <Widget>[
            FunctionItem(
              label: '显示地图',
              sublabel: 'CreateMapScreen',
              target: CreateMapScreen(),
            ),
          ],
        ),
        SPACE_BIG,
        FunctionGroup(
          headLabel: '与地图交互',
          children: <Widget>[
            FunctionItem(
              label: '控件与手势',
              sublabel: 'ControlGestureScreen',
              target: ControlGestureScreen(),
            ),
            FunctionItem(
              label: '调用方法交互',
              sublabel: 'CodeInteractionScreen',
              target: CodeInteractionScreen(),
            ),
            FunctionItem(
              label: '截图',
              sublabel: 'ScreenShotScreen',
              target: ScreenShotScreen(),
            ),
          ],
        ),
        SPACE_BIG,
        FunctionGroup(
          headLabel: '在地图上绘制',
          children: <Widget>[
            FunctionItem(
              label: '绘制点标记',
              sublabel: 'DrawPointScreen',
              target: DrawPointScreen(),
            ),
            FunctionItem(
              label: '绘制线',
              sublabel: 'DrawPolylineScreen',
              target: DrawPolylineScreen(),
            ),
            FunctionItem(
              label: '绘制圆',
              sublabel: 'DrawCircleScreen',
              target: DrawCircleScreen(),
            ),
            FunctionItem(
              label: '绘制多边形',
              sublabel: 'DrawPolygonScreen',
              target: DrawPolygonScreen(),
            ),
            FunctionItem(
              label: '绘制弧线',
              sublabel: 'DrawArcScreen',
              target: DrawArcScreen(),
            ),
          ],
        ),
        SPACE_BIG,
        FunctionGroup(
          headLabel: "工具",
          children: <Widget>[],
        ),
        SPACE_BIG,
        FunctionGroup(
          headLabel: "定位",
          children: <Widget>[
            FunctionItem(
              label: '定位',
              sublabel: 'LocationScreen',
              target: LocationScreen(),
            ),
          ],
        ),
      ],
    );
  }
}
