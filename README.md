![Logo](https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/Logo-Landscape.png?raw=true)

# 🗺&nbsp;百度 `地图`组件

[![pub package](https://img.shields.io/pub/v/bmap_map_fluttify.svg)](https://pub.Flutter-io.cn/packages/bmap_map_fluttify)

Dart接口基于[Fluttify](https://github.com/yohom/fluttify-core-example)编译器生成. dartdoc[接口文档](https://pub.flutter-io.cn/documentation/bmap_map_fluttify/latest/). 

## 👨🏻‍💻&nbsp;DEMO 与 社区

| Demo | QQ群 |
| :----------: | :----------: |
| 扫描二维码 <br> 或者 <br> [点击下载](https://github.com/fluttify-project/bmap_map_fluttify/blob/master/example/build/app/outputs/apk/release/app-release.apk?raw=true) </br> <img src="assets/bmap_map_fluttify_apk.png" height="300"> | 加入QQ群讨论 <br/> <img src="https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/QQ%E7%BE%A4.png?raw=true" height="300"> |

## 📱&nbsp;如何使用
1. 申请百度appkey:
- android: http://lbsyun.baidu.com/index.php?title=androidsdk/guide/create-project/ak
- ios: http://lbsyun.baidu.com/index.php?title=iossdk/guide/create-project/ak

2. 安装: 
```yaml
dependencies:
  flutter:
    sdk: flutter
  bmap_map_fluttify: ^x.x.x
```

3. 导入:
```dart
import 'package:bmap_map_fluttify/bmap_map_fluttify.dart';
```

4. 使用:
```dart 
/// !!使用真机调试!!
/// !注意: 只要是返回Future的方法, 一律使用`await`修饰, 确保当前方法执行完成后再执行下一行, 在不能使用`await`修饰的环境下, 在`then`方法中执行下一步.
/// 
/// android端的appkey需要在AndroidManifest.xml中配置, 详见 http://lbsyun.baidu.com/index.php?title=androidsdk/guide/create-map/showmap
await BmapService.init(iosKey: '7a***********************f4');
/// 如果你觉得引擎的日志太多, 可以关闭Fluttify引擎的日志
await enableFluttifyLog(false); // 关闭log

class BmapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BmapView(
      // 缩放级别 (可选)
      zoomLevel: 10, 
      // 中心点坐标 (可选)
      centerCoordinate: LatLng(39, 116),
      // 地图创建完成回调 (可选)
      onMapCreated: (controller) async {
        // requestPermission是权限请求方法, 需要你自己实现 
        // 如果不知道怎么处理, 可以参考example工程的实现, example工程依赖了`permission_handler`插件.
        if (await requestPermission()) {
          // 请开始你的表演
        }
      },
    );
  }
}
```

`requestPermission`的参考实现(需要依赖`permission_handler`插件): 
```dart
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

Future<bool> requestPermission() async {
  if ((await Permission.location.request()).isGranted) {
    return true;
  } else {
    // 处理授权失败的情况
    toast('需要定位权限!');
    return false;
  }
}
```

iOS `Info.plist`配置:
```xml
<!--使用PlatformView的声明-->
<key>io.flutter.embedded_views_preview</key>
<string>YES</string>
<!--定位权限声明-->
<key>NSLocationWhenInUseUsageDescription</key>
<string>需要定位权限</string>
<!--这个是app在桌面显示的名称 百度地图要求必须有这个键值对-->
<key>CFBundleDisplayName</key>
<string>百度地图测试</string>
```

5. 说明
- ios端添加marker时会出现日志`暂不支持有返回值的回调方法`, 这个可以忽略, 因为已经通过手写代码处理了.
- 插件中所有的方法都集中在[BmapController](https://pub.dev/documentation/bmap_map_fluttify/latest/bmap_map_fluttify/BmapController-class.html)和[BmapService](https://pub.dev/documentation/bmap_map_fluttify/latest/bmap_map_fluttify/BmapService-class.html)中, `BmapController`在`BmapWidget`创建完成时返回, 用来操作地图. `BmapService`中全都是静态方法, 不直接涉及地图组件的方法都放在这个类中, 比如初始化, 其他的各种计算等.

| 微信支持 | 支付宝支持 |
| :----------: | :----------: |
| <img src="https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/WechatIMG111.jpeg?raw=true" height="300"> | <img src="https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/1557492318.jpg?raw=true" height="300"> |

## LICENSE
> Copyright 2020 yohom
>   
> Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
>
>    http://www.apache.org/licenses/LICENSE-2.0
> 
>  Unless required by applicable law or agreed to in writing, software
>  distributed under the License is distributed on an "AS IS" BASIS,
>  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
>  See the License for the specific language governing permissions and
>  limitations under the License.