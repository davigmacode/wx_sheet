import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'theme_data.dart';
import 'types.dart';
import 'style.dart';

/// A mixin that provides a base theme for `WxSheet` styles.
///
/// This mixin offers a foundation for building custom sheet themes by inheriting
/// from a base theme and overriding specific styles. It provides access to
/// the current context's theme data (Material or Cupertino) and platform information.
///
/// Subclasses can implement methods like `textStyle`, `tonalStyle`, and others
/// to define styles for different sheet variants and sizes. Additionally, they
/// can override the base theme by providing their own implementations for these methods.
///
/// This mixin inherits from `WxSheetThemeData` and provides overrides for several properties:
///
/// * `style`: Merges the base theme's style with the current theme's style.
/// * `styleResolver`: Combines styles based on sheet data (variant, size) and base theme.
///
/// Mixins that extend `WxSheetThemePreset` should implement the following methods:
///
/// * `baseStyle`: Defines the base style for the sheet, considering the base theme.
/// * `variantStyleResolver`: Resolves styles based on the sheet's variant.
///   - This method should call specific style methods like `textStyle`, `tonalStyle`, etc.
/// * `sizeStyleResolver`: Resolves styles based on the sheet's size.
///   - This method should call specific style methods like `tinyStyle`, `smallStyle`, etc.
///
/// Additionally, subclasses can implement methods for individual styles (e.g., `textStyle`, `tonalStyle`).
mixin WxSheetThemePreset<T extends WxSheetThemeData<T>> on WxSheetThemeData<T> {
  BuildContext get context;

  /// Provides access to the current Material theme data.
  ThemeData get appTheme => _appTheme ??= Theme.of(context);
  ThemeData? _appTheme;

  /// Provides access to the current Cupertino theme data.
  CupertinoThemeData get cupertinoTheme =>
      _cupertinoTheme ??= CupertinoTheme.of(context);
  CupertinoThemeData? _cupertinoTheme;

  TextTheme get textTheme => appTheme.textTheme;

  ColorScheme get colorScheme => appTheme.colorScheme;

  Color get primaryColor => colorScheme.primary;

  Color get transparentColor => Colors.transparent;

  TargetPlatform get platform => appTheme.platform;

  bool get isAndroid => platform == TargetPlatform.android;

  bool get isIOS => platform == TargetPlatform.iOS;

  bool get isMacOS => platform == TargetPlatform.macOS;

  bool get isWindows => platform == TargetPlatform.windows;

  bool get isLinux => platform == TargetPlatform.linux;

  bool get isFuchsia => platform == TargetPlatform.fuchsia;

  bool get useMaterial3 => appTheme.useMaterial3;

  /// Inherits base theme properties from the parent `WxSheetThemePreset`.
  WxSheetThemePreset<dynamic>? get baseTheme => null;

  @override
  get animated => baseTheme?.animated ?? super.animated;

  @override
  get overlay => baseTheme?.overlay ?? super.overlay;

  @override
  get feedback => baseTheme?.feedback ?? super.feedback;

  @override
  get disabled => baseTheme?.disabled ?? super.disabled;

  @override
  get mouseCursor => baseTheme?.mouseCursor ?? super.mouseCursor;

  @override
  get leading => baseTheme?.leading ?? super.leading;

  @override
  get trailing => baseTheme?.trailing ?? super.trailing;

  @override
  get style {
    final baseThemeStyle = baseTheme?.style;
    if (baseThemeStyle != null) {
      return baseThemeStyle.merge(super.style);
    }
    return super.style;
  }

  @override
  get styleResolver {
    return (data) {
      final resolvedBase = baseStyle(data);
      final resolvedVariant = variantStyleResolver(data);
      final resolvedSize = sizeStyleResolver(data.effectiveSize);
      return resolvedBase.merge(resolvedVariant).merge(resolvedSize);
    };
  }

  /// Retrieves the base style for the sheet based on the provided data.
  /// Can be overridden by subclasses to define custom base styles.
  WxSheetStyle baseStyle(WxSheetStyleResolverData data) {
    return baseTheme?.baseStyle(data) ?? const WxSheetStyle();
  }

  /// Resolves the style based on the sheet's variant (tonal, filled, elevated, etc.).
  WxSheetStyle variantStyleResolver(WxSheetStyleResolverData data) {
    final variant = data.effectiveVariant;
    final WxSheetStyle resolvedStyle;
    if (variant == WxSheetVariant.text) {
      resolvedStyle = textStyle(data);
    } else if (variant == WxSheetVariant.tonal) {
      resolvedStyle = tonalStyle(data);
    } else if (variant == WxSheetVariant.filled) {
      resolvedStyle = filledStyle(data);
    } else if (variant == WxSheetVariant.elevated) {
      resolvedStyle = elevatedStyle(data);
    } else if (variant == WxSheetVariant.outlined) {
      resolvedStyle = outlinedStyle(data);
    } else if (variant == WxSheetVariant.gradient) {
      resolvedStyle = gradientStyle(data);
    } else {
      resolvedStyle = variantStyle(data);
    }

    final baseThemeStyle = baseTheme?.variantStyleResolver(data);
    if (baseThemeStyle != null) {
      return baseThemeStyle.merge(resolvedStyle);
    }
    return resolvedStyle;
  }

  /// Defines the style for the text variant of the sheet.
  /// Can be overridden by subclasses to customize the text style.
  WxSheetStyle textStyle(WxSheetStyleResolverData data) {
    return const WxSheetStyle();
  }

  /// Defines the style for the tonal variant of the sheet.
  /// Can be overridden by subclasses to customize the tonal style.
  WxSheetStyle tonalStyle(WxSheetStyleResolverData data) {
    return const WxSheetStyle();
  }

  /// Defines the style for the elevated variant of the sheet.
  /// Can be overridden by subclasses to customize the elevated style.
  WxSheetStyle elevatedStyle(WxSheetStyleResolverData data) {
    return const WxSheetStyle();
  }

  /// Defines the style for the filled variant of the sheet.
  /// Can be overridden by subclasses to customize the filled style.
  WxSheetStyle filledStyle(WxSheetStyleResolverData data) {
    return const WxSheetStyle();
  }

  /// Defines the style for the outlined variant of the sheet.
  /// Can be overridden by subclasses to customize the outlined style.
  WxSheetStyle outlinedStyle(WxSheetStyleResolverData data) {
    return const WxSheetStyle();
  }

  /// Defines the style for the gradient variant of the sheet.
  /// Can be overridden by subclasses to customize the gradient style.
  WxSheetStyle gradientStyle(WxSheetStyleResolverData data) {
    return const WxSheetStyle();
  }

  /// Defines the style for the custom variant of the sheet.
  /// Can be overridden by subclasses to customize the style.
  WxSheetStyle variantStyle(WxSheetStyleResolverData data) {
    return const WxSheetStyle();
  }

  /// Defines the style for a specific sheet size (tiny, small, medium, etc.).
  /// Can be overridden by subclasses to customize size-based styles.
  WxSheetStyle sizeStyleResolver(WxSheetSize? size) {
    final WxSheetStyle resolvedStyle;
    if (size == WxSheetSize.tiny) {
      resolvedStyle = tinyStyle();
    } else if (size == WxSheetSize.small) {
      resolvedStyle = smallStyle();
    } else if (size == WxSheetSize.medium) {
      resolvedStyle = mediumStyle();
    } else if (size == WxSheetSize.large) {
      resolvedStyle = largeStyle();
    } else if (size == WxSheetSize.huge) {
      resolvedStyle = hugeStyle();
    } else {
      resolvedStyle = sizeStyle(size);
    }

    final baseThemeStyle = baseTheme?.sizeStyleResolver(size);
    if (baseThemeStyle != null) {
      return baseThemeStyle.merge(resolvedStyle);
    }
    return resolvedStyle;
  }

  /// Defines the style for the tiny size of the sheet.
  /// Can be overridden by subclasses to customize the tiny style.
  WxSheetStyle tinyStyle() {
    return const WxSheetStyle();
  }

  /// Defines the style for the small size of the sheet.
  /// Can be overridden by subclasses to customize the small style.
  WxSheetStyle smallStyle() {
    return const WxSheetStyle();
  }

  /// Defines the style for the medium size of the sheet.
  /// Can be overridden by subclasses to customize the medium style.
  WxSheetStyle mediumStyle() {
    return const WxSheetStyle();
  }

  /// Defines the style for the large size of the sheet.
  /// Can be overridden by subclasses to customize the large style.
  WxSheetStyle largeStyle() {
    return const WxSheetStyle();
  }

  /// Defines the style for the huge size of the sheet.
  /// Can be overridden by subclasses to customize the huge style.
  WxSheetStyle hugeStyle() {
    return const WxSheetStyle();
  }

  /// Defines the style for the custom size of the sheet.
  /// Can be overridden by subclasses to customize the style.
  WxSheetStyle sizeStyle(WxSheetSize? size) {
    return const WxSheetStyle();
  }
}
