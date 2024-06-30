import 'package:flutter/widgets.dart';
import '../basic/main.dart';
import 'theme.dart';
import 'theme_data.dart';

/// The sheet widget serves as the building block for many Widgetarian components,
/// providing a base layer for customization.
class WxToggleSheet extends WxSheet<WxToggleSheetThemeData> {
  /// Create a sheet widget
  const WxToggleSheet({
    super.key,
    super.animated,
    super.duration,
    super.curve,
    super.direction,
    super.variant,
    super.severity,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.spacing,
    super.adaptiveSpacing,
    super.align,
    super.justify,
    super.alignment,
    super.clipBehavior,
    super.overlayDisabled,
    super.overlayColor,
    super.overlayOpacity,
    super.elevationColor,
    super.elevation,
    super.textStyle,
    super.textAlign,
    super.textWrap,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundColor,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.borderOffset,
    super.border,
    super.image,
    super.shadows,
    super.gradient,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.selected,
    super.disabled,
    super.loading,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.onSelected,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.loadingStyle,
    super.disabledStyle,
    super.style,
    super.leading,
    super.trailing,
    super.child,
  });

  /// Create a sheet widget with square size
  const WxToggleSheet.square({
    super.key,
    super.size,
    super.minSize,
    super.maxSize,
    super.animated,
    super.duration,
    super.curve,
    super.direction,
    super.variant,
    super.severity,
    super.margin,
    super.padding,
    super.spacing,
    super.adaptiveSpacing,
    super.align,
    super.justify,
    super.alignment,
    super.clipBehavior,
    super.overlayDisabled,
    super.overlayColor,
    super.overlayOpacity,
    super.elevationColor,
    super.elevation,
    super.textStyle,
    super.textAlign,
    super.textWrap,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundColor,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.borderOffset,
    super.border,
    super.image,
    super.shadows,
    super.gradient,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.selected,
    super.disabled,
    super.loading,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.onSelected,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.loadingStyle,
    super.disabledStyle,
    super.style,
    super.leading,
    super.trailing,
    super.child,
  }) : super.square();

  /// Create sheet widget with circle shape
  const WxToggleSheet.circle({
    super.key,
    super.radius,
    super.minRadius,
    super.maxRadius,
    super.animated,
    super.duration,
    super.curve,
    super.direction,
    super.variant,
    super.severity,
    super.margin,
    super.padding,
    super.spacing,
    super.adaptiveSpacing,
    super.align,
    super.justify,
    super.alignment,
    super.clipBehavior,
    super.overlayDisabled,
    super.overlayColor,
    super.overlayOpacity,
    super.elevationColor,
    super.elevation,
    super.textStyle,
    super.textAlign,
    super.textWrap,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundColor,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.borderOffset,
    super.image,
    super.shadows,
    super.gradient,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.tooltip,
    super.wrapper,
    super.selected,
    super.disabled,
    super.loading,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.onSelected,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.loadingStyle,
    super.disabledStyle,
    super.style,
    super.leading,
    super.trailing,
    super.child,
  }) : super.circle();

  /// Create a sheet widget with stadium shape
  const WxToggleSheet.stadium({
    super.key,
    super.animated,
    super.duration,
    super.curve,
    super.direction,
    super.variant,
    super.severity,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.spacing,
    super.adaptiveSpacing,
    super.align,
    super.justify,
    super.alignment,
    super.clipBehavior,
    super.overlayDisabled,
    super.overlayColor,
    super.overlayOpacity,
    super.elevationColor,
    super.elevation,
    super.textStyle,
    super.textAlign,
    super.textWrap,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundColor,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderStyle,
    super.borderOffset,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.image,
    super.shadows,
    super.gradient,
    super.tooltip,
    super.wrapper,
    super.selected,
    super.disabled,
    super.loading,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.onSelected,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.loadingStyle,
    super.disabledStyle,
    super.style,
    super.leading,
    super.trailing,
    super.child,
  }) : super.stadium();

  @override
  WxToggleSheetThemeData getThemeData(BuildContext context) {
    return WxToggleSheetTheme.of(context);
  }
}
