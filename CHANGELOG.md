## 0.7.0
### More strict typing is the theme of this update.
* Added alternative class names. `StyleClass` -> `S` and `GestureClass` -> `G`.
* [Breaking] Changes `backgroundColor` syntax to `background.color([Color])`, `background.hex()` and `background.rgba(int, int, int, [double])`. Mover backgroundImage and backgroundBlur to `background` method.
* [Breaking] Changed `alignment` syntac from `alignment(dynamic [alignment])` to `alignment.[alignment]`
* [Breaking] Changed `overflow` syntax from `overflow([type])` to `overflow.[type]`.
* [Breaking] Changed `backgroundImage`, `linearGradient`, `radialGradient` and `sweepGradient` alignment paramteres from `dynamic` to `AlignmentGeometry`.
* [Breaking] Changed `ripple`, `elevation`, `boxShadow`, `border`, `sweepGradient`, `radialGradient`, `linearGradient`, `backgroundColor` color parameters from `dynamic` to `Color`. Use [Color], rgb(), rgba() or hex() for color.
* [Fix] `overflow.hidden()` now clips with a borderRadius.
* [Fix] Bug with Gestures not activating

## 0.6.4
* Added `opacity` paramter to the `elevation` method. This parameter is a relative opacity constant.
* Added the optional paramteres `behaviour`, `excludeFromSemantics` and `dragStartBehaviour` to `GestureClass`.
* Added `hex` function.
* [Fix] `ripple` now works together with all gestures.
* [Breaking] As recomended in the dartlang documentation the single dotted chained methods is recalled.
    `.overflow('scroll')` -> `..overflow('scroll')`.
https://dart-lang.github.io/linter/lints/avoid_returning_this.html

## 0.6.3
* Added support for singledotted chained methods for both the `StyleClass` and the `GestureClass`. `..overflow('scroll')` -> `.overflow('scroll')`.

## 0.6.2
* Added `overflow` method to `StyleClass`.
* [Breaking] `angled` property inside the `elevation` method is renamed to `angle` and is now given in a circular value. 0.0 equals down. [null] equals directly under the widget.

## 0.6.1
* [Fix] `ripple` and `opacity` now works with `add` method.
* Other minor improvements and fixes

## 0.6.0
* Added `ripple` method to `StyleClass`.
* Added `opacity` method to `StyleClass`.
* Major rewrite of widget builder. Improved performance.

## 0.5.0
* Added `backgroundBlur` method to the `StyleClass`.
* Added `backgroundImage` method to `StyleClass`.
* `border` now supports the use of `all` and `left`, `right`, `top` and `bottom` simultaneous.'border(all: 10, left: 20)'.
* `borderRadius` now supports the use of `all` and `topLeft`, `topRight`, `bottomLeft` and `bottomRight` simultaneous. 'borderRadius(all: 10, bottomLeft: 30)'.
* `padding` and `margin` now supports the use of all parameters simultaneous. `padding(all: 10, bottom: 50)`.
* Added `rgb()` and `rgba()` functions. May replace `[int, int, int]` and `[int, int, int, double]` formats in color parameters.
* [Breaking] `ripple` method removed until a better solution is implemented. 

## 0.4.0
* [Breaking] Removed `hex` and `rgba` properties and combines them with the `color` property and changes it to dynamic. `color` property now supports HEX ('#xxxxxx'), RGBA ([int, int, int, double]), RGB ([int, int, int]) and [Color] format.
* Changed alignment properties to dynamic. The alignment property now supports a variety of different formats.
* The widget tree is now dynamicly constructed. Unused widgets is no longer being added to the widget tree. Improved performance.
* Added `linearGradient()`, `radialGradient()`, `sweepGradient()` and `border()` methods to the `StyleClass`.
* Added optional parameter `override` to `add()`, so you can choose to override already defined style or not when combining classes.
* Added animation support for `scale()`, `rotate()`, `offset` and `align()`. All styling properties now support animation.
* [Breaking] Added the ability to change between using radians or values between 0 to 1 in the `StyleClass`. Change by: `StyleClass(useRadians: true)..[style]`. Breaking because your values may be written in radians but now is interpreted as not.
* [Breaking] Removed elevation `bgColor` parameter.
* [Breaking] `backgroundColor` changed from named parameter to unnamed.
* [beta] Added `ripple()` method to the `StyleClass`. Known issues: Doesnt cover the whole area when `border` and `borderRadius` is in use. Problems with gestures.
* [beta] Added some custom presets. `import 'package:division/presets.dart'`.

## 0.3.0
* [Breaking] Major rewrite. Changed the `List<StyleItem>` format to a custom `StyleClass`. Changed the `List<GestureItem>` format to a custom `GestureClass`.
* [Breaking] Improved `elevation()` style property
* Added `animate()`, `rotate()`, `scale()` and `offset()` properties to the StyleClass
* Enhanced preformance
* Other minor tweaks

## 0.2.0
* Added all gesture properties found in the GestureDetector widget
* Added `elevation` style property containing boxShadow presets.
* Fixed bug with S.align() and S.alignChild() style properties. They now work with `topLeft`, `topRight`, `bottomLeft` and `bottomRight`!
* General code improvements and optimizing

## 0.1.0
* Initial release/ idea
* Implementet the basic features for the `style` property and the `gesture` property for the `Division` widget