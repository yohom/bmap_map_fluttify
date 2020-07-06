![Logo](https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/Logo-Landscape.png?raw=true)

# 百度地图 地图组件 Flutter插件
[![pub package](https://img.shields.io/pub/v/bmap_map_fluttify.svg)](https://pub.Flutter-io.cn/packages/bmap_map_fluttify)

**专业版为付费插件, 如有需要请联系qq 382146139**

**专业版为付费插件, 如有需要请联系qq 382146139**

**专业版为付费插件, 如有需要请联系qq 382146139**

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
| QQ2群 | QQ1群(已满) |
| :----------: | :----------: |
| 加入QQ群讨论 <br/> <img src="https://github.com/fluttify-project/fluttify-project/blob/master/resources/qrcode_1593774649831.jpg?raw=true" height="300"> |加入QQ群讨论 <br/> <img src="https://github.com/fluttify-project/fluttify-project/blob/master/resources/1593774713224_temp_qrcode_share_9993.png?raw=true" height="300"> | 

## 社区版与专业版
|    | 社区版 | 专业版 |
|:-----:|:-----:|:-----:|
|  设置地图中心点  |  ✅ |  ✅   |
|  设置我的位置数据  |  ✅ |  ✅   |
|  批量添加marker  |  ✅ |  ✅   |
|  设置marker点击监听事件  |  ✅ |  ✅   |
|  把marker列表从地图上移除  |  ✅ |  ✅   |
|  清除地图上所有覆盖物  |  ✅ |  ✅   |
|  添加折线  |  ✅ |  ✅   |
|  添加多边形  |  ✅ |  ✅   |
|  添加圆  |  ✅ |  ✅   |
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
|  设置marker拖动监听事件  |  ✅ |  ✅   |
|  设置地图移动监听事件  |  ✅ |  ✅   |
