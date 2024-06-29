import 'package:flutter/material.dart';
import 'style.dart';
import 'theme_preset_base.dart';

@immutable
class WxSheetThemeM2<T extends WxSheetThemeBase<T>>
    extends WxSheetThemeBase<T> {
  WxSheetThemeM2(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
    super.wrapper,
    super.style,
  });

  @override
  get style => super.style.copyWith(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        iconSize: 18.0,
        foregroundSpacing: 8.0,
        borderColor: colorScheme.onSurface,
        elevationColor: colorScheme.shadow,
      );

  @override
  WxSheetStyle textStyle(Color? severity) {
    return super.textStyle(severity).copyWith(
          foregroundColor: severity ?? colorScheme.onSurface,
          backgroundColor: colorScheme.surface,
        );
  }

  @override
  WxSheetStyle tonalStyle(Color? severity) {
    return super.tonalStyle(severity).copyWith(
          foregroundColor: severity ?? colorScheme.onSurface,
          backgroundColor: severity ?? appTheme.unselectedWidgetColor,
        );
  }

  @override
  WxSheetStyle filledStyle(Color? severity) {
    return super.filledStyle(severity).copyWith(
          backgroundColor: severity ?? appTheme.unselectedWidgetColor,
          borderColor: severity,
        );
  }

  @override
  WxSheetStyle elevatedStyle(Color? severity) {
    return super.elevatedStyle(severity).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: severity ?? colorScheme.onSurface,
          elevationColor: severity,
        );
  }

  @override
  WxSheetStyle outlinedStyle(Color? severity) {
    return super.outlinedStyle(severity).copyWith(
          backgroundColor: colorScheme.surface,
          foregroundColor: severity ?? colorScheme.onSurface,
          borderColor: severity,
          borderOpacity: .3,
        );
  }
}
