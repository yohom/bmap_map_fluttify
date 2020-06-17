/// 地图类型
enum MapType {
  /// 标准视图
  Standard,

  /// 卫星视图
  Satellite,
}

/// 地图语言
enum Language {
  /// 中文
  Chinese,

  /// 英文
  English,
}

/// 坐标类型
enum CoordType {
  GPS,
  Google,
  MapBar,
  Baidu,
  MapABC,
  SosoMap,
  Aliyun,
}

/// 线段末端处样式
enum LineCapType {
  /// 普通头
  Butt,

  /// 扩展头
  Square,

  /// 箭头
  Arrow,

  /// 圆形头
  Round,
}

/// 线段连接处样式
enum LineJoinType {
  /// 斜面连接点
  Bevel,

  /// 斜接连接点
  Miter,

  /// 圆角连接点
  Round,
}

/// 虚线样式
enum DashType {
  /// 方块样式
  Square,

  /// 圆点样式
  Circle,
}

enum MyLocationType {
  /// 只定位
  Show,

  /// 定位一次, 并移动到中心
  Locate,

  /// 跟随
  Follow,

  /// 方向跟随
  Rotate,
}

/// 定位模式
enum LocationAccuracy {
  /// 高
  High,

  /// 低
  Low,

  /// 设备传感器 仅android
  DeviceSensor,
}
