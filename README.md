![Logo](https://github.com/fluttify-project/fluttify-core-example/blob/develop/other/Logo-Landscape.png?raw=true)

# 百度地图 地图组件 Flutter插件
[![pub package](https://img.shields.io/pub/v/bmap_map_fluttify.svg)](https://pub.Flutter-io.cn/packages/bmap_map_fluttify)

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
1. ~~使用地图需要使能UiKitView, 在Info.plist中添加:~~
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

## LICENSE
> Copyright (C) 2021 yohom
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
