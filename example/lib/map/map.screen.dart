import 'package:bmap_map_fluttify_example/widgets/function_group.widget.dart';
import 'package:bmap_map_fluttify_example/widgets/function_item.widget.dart';
import 'package:bmap_map_fluttify_example/widgets/todo.screen.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

import 'create_map/create_map.screen.dart';
import 'draw_on_map/draw_point.screen.dart';
import 'interact_with_map/code_interaction.screen.dart';

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
            FunctionItem(
              label: '显示多地图',
              sublabel: 'MultiMapScreen(TODO)',
              target: TODOScreen(),
            ),
          ],
        ),
        SPACE_BIG,
        FunctionGroup(
          headLabel: '与地图交互',
          children: <Widget>[
            FunctionItem(
              label: '控件交互',
              sublabel: 'ControlInteractionScreen(TODO)',
              target: TODOScreen(),
            ),
            FunctionItem(
              label: '手势交互',
              sublabel: 'GestureInteractionScreen(TODO)',
              target: TODOScreen(),
            ),
            FunctionItem(
              label: '调用方法交互',
              sublabel: 'CodeInteractionScreen',
              target: CodeInteractionScreen(),
            ),
            FunctionItem(
              label: '截图',
              sublabel: 'ScreenShotScreen(TODO)',
              target: TODOScreen(),
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
              sublabel: 'DrawPolylineScreen(TODO)',
              target: TODOScreen(),
            ),
            FunctionItem(
              label: '绘制圆',
              sublabel: 'DrawCircleScreen(TODO)',
              target: TODOScreen(),
            ),
            FunctionItem(
              label: '绘制多边形',
              sublabel: 'DrawPolygonScreen(TODO)',
              target: TODOScreen(),
            ),
          ],
        ),
        SPACE_BIG,
        FunctionGroup(
          headLabel: "工具",
          children: <Widget>[
            FunctionItem(
              label: "坐标转换",
              sublabel: "CoordinateTransformationScreen(TODO)",
              target: TODOScreen(),
            ),
            FunctionItem(
              label: "两点间距离计算",
              sublabel: "CalculateDistanceScreen(TODO)",
              target: TODOScreen(),
            ),
            FunctionItem(
              label: "调用百度地图",
              sublabel: "LaunchBmapScreen(TODO)",
              target: TODOScreen(),
            ),
            FunctionItem(
              label: "轨迹纠偏",
              sublabel: "ProcessedTraceScreen(TODO)",
              target: TODOScreen(),
            ),
          ],
        ),
      ],
    );
  }
}
