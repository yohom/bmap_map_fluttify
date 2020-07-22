![Logo](https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/Logo-Landscape.png?raw=true)

# 百度地图 地图组件 Flutter插件
[![pub package](https://img.shields.io/pub/v/bmap_map_fluttify.svg)](https://pub.Flutter-io.cn/packages/bmap_map_fluttify)

**专业版为付费插件, 如有需要请联系qq 382146139**

**专业版为付费插件, 如有需要请联系qq 382146139**

**专业版为付费插件, 如有需要请联系qq 382146139**

# Fluttify系列插件
|  名称  | 描述 | 仓库 |
|:-----:|:-----:|:-----:|
| [高德地图](https://github.com/fluttify-project/amap_map_fluttify)  |  高德地图地图组件, 提供地图控件 | [![pub package](https://img.shields.io/pub/v/amap_map_fluttify.svg)](https://pub.Flutter-io.cn/packages/amap_map_fluttify) |
| [高德定位](https://github.com/fluttify-project/amap_location_fluttify)  |  高德地图定位组件, 提供独立的定位功能 | [![pub package](https://img.shields.io/pub/v/amap_location_fluttify.svg)](https://pub.Flutter-io.cn/packages/amap_location_fluttify) |
| [高德搜索](https://github.com/fluttify-project/amap_search_fluttify)  |  高德地图搜索组件, 提供poi搜索等功能 | [![pub package](https://img.shields.io/pub/v/amap_search_fluttify.svg)](https://pub.Flutter-io.cn/packages/amap_search_fluttify) |
| [百度地图](https://github.com/fluttify-project/bmap_map_fluttify)  |  百度地图, 包含了地图控件, 定位以及搜索poi等功能 | [![pub package](https://img.shields.io/pub/v/bmap_map_fluttify.svg)](https://pub.Flutter-io.cn/packages/bmap_map_fluttify) |
| [百度人脸识别](https://github.com/fluttify-project/baidu_face_flutter)  |  百度人脸识别, 提供活体检测等功能 | [![pub package](https://img.shields.io/pub/v/baidu_face_flutter.svg)](https://pub.Flutter-io.cn/packages/baidu_face_flutter) |
| [网易直播](https://github.com/fluttify-project/netease_live_fluttify)  |  网易直播推流组件 | [![pub package](https://img.shields.io/pub/v/netease_live_fluttify.svg)](https://pub.Flutter-io.cn/packages/netease_live_fluttify) |
| [网易云信](https://github.com/fluttify-project/nim_fluttify)  |  网易云信 IM组件 | [![pub package](https://img.shields.io/pub/v/nim_fluttify.svg)](https://pub.Flutter-io.cn/packages/nim_fluttify) |
| [腾讯直播](https://github.com/fluttify-project/tencent_live_fluttify)  |  腾讯直播, 包含推流组件和播放组件 | [![pub package](https://img.shields.io/pub/v/tencent_live_fluttify.svg)](https://pub.Flutter-io.cn/packages/tencent_live_fluttify) |
| [腾讯IM](https://github.com/fluttify-project/tim_fluttify)  |  腾讯IM组件 | [![pub package](https://img.shields.io/pub/v/tim_fluttify.svg)](https://pub.Flutter-io.cn/packages/tim_fluttify) |
| [腾讯地图](https://github.com/fluttify-project/tmap_map_fluttify)  |  腾讯地图组件 | [![pub package](https://img.shields.io/pub/v/tmap_map_fluttify.svg)](https://pub.Flutter-io.cn/packages/tmap_map_fluttify) |
| [讯飞语音合成](https://github.com/fluttify-project/xftts_fluttify)  |  腾讯语言合成组件, 提供文字转语言功能 | [![pub package](https://img.shields.io/pub/v/xftts_fluttify.svg)](https://pub.flutter-io.cn/packages/xftts_fluttify) |
| [极光统计](https://github.com/fluttify-project/janalytics_fluttify)  |  极光统计组件, 提供异常上报等功能 | [![pub package](https://img.shields.io/pub/v/janalytics_fluttify.svg)](https://pub.flutter-io.cn/packages/janalytics_fluttify) |
| [阿里云RTC](https://github.com/fluttify-project/ali_rtc_fluttify)  |  阿里云实时音视频 | [![pub package](https://img.shields.io/pub/v/ali_rtc_fluttify.svg)](https://pub.flutter-io.cn/packages/ali_rtc_fluttify) |
| [环信](https://github.com/fluttify-project/easemob_im_fluttify)  |  环信IM | [![pub package](https://img.shields.io/pub/v/easemob_im_fluttify.svg)](https://pub.flutter-io.cn/packages/easemob_im_fluttify) |
| [未完待续...](https://github.com/fluttify-project)  |  如有其它需求, 请联系qq 382146139 | ![fluttify](https://img.shields.io/badge/fluttify-welcom-green) |

## 依赖
```yaml
dependencies:
  flutter:
    sdk: flutter
  bmap_map_fluttify: ^x.x.x
```

## 配置
### Android
1. 在AndroidManifest.xml的application标签下配置app key:
```xml
<application>
    <meta-data
            android:name="com.baidu.lbsapi.API_KEY"
            android:value="FQxxxxxxxxxxxxxxxxxxxxxxx2R"/>
</application>
```
2. 注意在app/build.gradle的android块中配置签名信息, 并在buildTypes块中指定签名信息, 否则将无法匹配到你在百度后台配置的appkey, 例如:
```groovy
android {
    signingConfigs {
        release {
            keyAlias 'bmap_map_test'
            keyPassword 'bmap_map_test'
            storeFile file('../bmap_map_test.jks')
            storePassword 'bmap_map_test'
        }
    }

    buildTypes {
        debug {
            signingConfig signingConfigs.release
        }
        profile {
            signingConfig signingConfigs.release
        }
        release {
            signingConfig signingConfigs.release
        }
    }
}
```

### iOS
1. 使用地图需要使能UiKitView, 在Info.plist中添加:
```xml
<key>io.flutter.embedded_views_preview</key>
<string>YES</string>
```
2. 百度地图要求项目配置BundleDisplayName, 在Info.plist中添加:
```xml
<key>CFBundleDisplayName</key>
<string>填入你的名称</string>
```
3. 如果是swift项目(flutter创建项目时默认), 需要注释掉Podfile中的`use_frameworks!`, 如下:
```ruby
target 'Runner' do
  # use_frameworks!
  use_modular_headers!

  # Flutter Pod
...
```


## 导入
```dart
import 'package:bmap_map_fluttify/bmap_map_fluttify.dart';
```

## 使用
参考[wiki](https://github.com/fluttify-project/bmap_map_fluttify/wiki).

## 社区
| QQ群 |
| :----------: |
| <img src="https://github.com/fluttify-project/fluttify-project/blob/master/resources/1593774713224_temp_qrcode_share_9993.png?raw=true" height="300"> | 

## 社区版与专业版
|  显示地图  | 社区版 | 专业版 |
|:-----:|:-----:|:-----:|
|  设置地图中心点  |  ✅ |  ✅   |
|  设置我的位置数据  |  ✅ |  ✅   |
|  自定义地图  |  ☑️ |  ✅   |
|  截图  |  ☑️ |  ✅   |

|  在地图上绘制  | 社区版 | 专业版 |
|:-----:|:-----:|:-----:|
|  批量添加marker  |  ✅ |  ✅   |
|  设置marker点击监听事件  |  ✅ |  ✅   |
|  把marker列表从地图上移除  |  ✅ |  ✅   |
|  清除地图上所有覆盖物  |  ✅ |  ✅   |
|  添加折线  |  ✅ |  ✅   |
|  添加多边形  |  ✅ |  ✅   |
|  添加圆  |  ✅ |  ✅   |
|  设置marker拖动监听事件  |  ✅ |  ✅   |
|  添加弧线  |  ☑️ |  ✅   |

|  与地图交互  | 社区版 | 专业版 |
|:-----:|:-----:|:-----:|
|  放大一个等级  |  ✅ |  ✅   |
|  缩小一个等级  |  ✅ |  ✅   |
|  选择显示图层  |  ✅ |  ✅   |
|  显示路况信息  |  ✅ |  ✅   |
|  缩放手势使能  |  ✅ |  ✅   |
|  滑动手势使能  |  ✅ |  ✅   |
|  旋转手势使能  |  ✅ |  ✅   |
|  倾斜手势使能  |  ✅ |  ✅   |
|  设置缩放大小  |  ✅ |  ✅   |
|  获取当前缩放大小  |  ✅ |  ✅   |
|  设置缩放是否以中心点为锚点  |  ✅ |  ✅   |
|  获取地图中心点  |  ✅ |  ✅   |
|  设置地图移动监听事件  |  ✅ |  ✅   |
|  设置logo位置  |  ☑️ |  ✅   |
|  设置地图内间距  |  ☑️ |  ✅   |
|  是否显示指南针  |  ☑️ |  ✅   |
|  调整覆盖物至同一屏幕中显示  |  ☑️ |  ✅   |
|  控制底图标注显示  |  ☑️ |  ✅   |
|  限制地图的显示范围  |  ☑️ |  ✅   |

## LICENSE
> Copyright (C) 2020 yohom
> 
> This program is free software: you can redistribute it and/or modify
> it under the terms of the GNU General Public License as published by
> the Free Software Foundation, either version 3 of the License, or
> (at your option) any later version.
> 
> This program is distributed in the hope that it will be useful,
> but WITHOUT ANY WARRANTY; without even the implied warranty of
> MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> GNU General Public License for more details.
> 
> You should have received a copy of the GNU General Public License
> along with this program.  If not, see <https://www.gnu.org/licenses/>.
