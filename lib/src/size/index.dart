import 'package:flutter_screenutil/flutter_screenutil.dart';

// 默认iphone 6设计尺寸
double designWidth = 750;
double designHeight = 1334;

Map<double, double> widths = {};
Map<double, double> heights = {};
Map<double, double> fontSizes = {};

typedef double RetDouble(double value);

double normalize(RetDouble f, double size, Map<double, double> sizes) {
  if (size == 0) {
    return size;
  }

  // 如果是无限大，那么直接返回
  if (size == double.infinity) {
    return size;
  }

  bool isNegative = size < 0;

  if (isNegative) {
    size = -size;
  }

  double _size = sizes[size];
  if (_size == null) {
    _size = sizes[size] = f(size);
  }

  return isNegative ? -_size : _size;
}

// 宽度
double getWidth(double width,
    {bool useDefault = false, bool useHeight = false}) {
  if (useDefault) {
    return width;
  }

  // 采用获取高度的形式
  if (useHeight) {
    return getHeight(width);
  }

  return normalize(ScreenUtil.getInstance().setWidth, width, widths);
}

// 高度
double getHeight(double height, {bool useDefault = false}) {
  if (useDefault) {
    return height;
  }
  return normalize(ScreenUtil.getInstance().setHeight, height, heights);
}

// 尺寸，一般是字体的大小
double getSize(double size, {bool useDefault = false}) {
  if (useDefault) {
    return size;
  }
  return normalize(ScreenUtil.getInstance().setSp, size, fontSizes);
}

// 获取屏幕的宽度
getScreenWidth() {
  return ScreenUtil.screenWidth;
}

// 获取屏幕的高度
getScreenHeight() {
  return ScreenUtil.screenHeight;
}

// 状态栏的高度，刘海屏跟高
getStatusBarHeight() {
  return ScreenUtil.statusBarHeight;
}

// 底部安全区
double getBottomBarHeight() {
  return ScreenUtil.bottomBarHeight;
}

// 初始化尺寸,在
// 假如设计稿是按iPhone6的尺寸设计的(iPhone6 750*1334)
// ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
void initSize() {
  var size = designHeight > designWidth ? designHeight : designWidth;
  for (double i = 0; i <= size; i++) {
    widths[i] = getWidth(i);
    heights[i] = getHeight(i);
    fontSizes[i] = getSize(i);
  }
}

// 重置尺寸
void resetSize() {
  widths = {};
  heights = {};
  fontSizes = {};
}

void setDesign({double width = 750, double height = 1334}) {
  designWidth = width;
  designHeight = height;
}

// 初始化
void initSizeWithContext(context, {double width, double height}) {
  ScreenUtil.instance =
      ScreenUtil(width: width ?? designWidth, height: height ?? designHeight)
        ..init(context);
}
