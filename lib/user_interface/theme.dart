import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff004a2b),
      surfaceTint: Color(0xff176c43),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff1e7148),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff486552),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffceefd6),
      onSecondaryContainer: Color(0xff34513e),
      tertiary: Color(0xff34397b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff585da1),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff7faf4),
      onBackground: Color(0xff181d19),
      surface: Color(0xfff7faf4),
      onSurface: Color(0xff181d19),
      surfaceVariant: Color(0xffdbe5db),
      onSurfaceVariant: Color(0xff3f4942),
      outline: Color(0xff6f7a71),
      outlineVariant: Color(0xffbfc9bf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d312e),
      inverseOnSurface: Color(0xffeef2ec),
      inversePrimary: Color(0xff88d7a6),
      primaryFixed: Color(0xffa3f4c1),
      onPrimaryFixed: Color(0xff002110),
      primaryFixedDim: Color(0xff88d7a6),
      onPrimaryFixedVariant: Color(0xff005230),
      secondaryFixed: Color(0xffcaebd2),
      onSecondaryFixed: Color(0xff042012),
      secondaryFixedDim: Color(0xffaeceb7),
      onSecondaryFixedVariant: Color(0xff304d3b),
      tertiaryFixed: Color(0xffe0e0ff),
      onTertiaryFixed: Color(0xff0c1055),
      tertiaryFixedDim: Color(0xffbec2ff),
      onTertiaryFixedVariant: Color(0xff3b4082),
      surfaceDim: Color(0xffd7dbd5),
      surfaceBright: Color(0xfff7faf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f5ef),
      surfaceContainer: Color(0xffebefe9),
      surfaceContainerHigh: Color(0xffe6e9e3),
      surfaceContainerHighest: Color(0xffe0e4de),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff004a2b),
      surfaceTint: Color(0xff176c43),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff1e7148),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff2d4937),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff5e7b67),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff34397b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff585da1),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff7faf4),
      onBackground: Color(0xff181d19),
      surface: Color(0xfff7faf4),
      onSurface: Color(0xff181d19),
      surfaceVariant: Color(0xffdbe5db),
      onSurfaceVariant: Color(0xff3b453e),
      outline: Color(0xff576259),
      outlineVariant: Color(0xff737d74),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d312e),
      inverseOnSurface: Color(0xffeef2ec),
      inversePrimary: Color(0xff88d7a6),
      primaryFixed: Color(0xff338358),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff136941),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff5e7b67),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff45624f),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff696fb4),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff515699),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dbd5),
      surfaceBright: Color(0xfff7faf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f5ef),
      surfaceContainer: Color(0xffebefe9),
      surfaceContainerHigh: Color(0xffe6e9e3),
      surfaceContainerHighest: Color(0xffe0e4de),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff002915),
      surfaceTint: Color(0xff176c43),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004d2d),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff0b2718),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff2d4937),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff14195c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff373c7e),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff7faf4),
      onBackground: Color(0xff181d19),
      surface: Color(0xfff7faf4),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffdbe5db),
      onSurfaceVariant: Color(0xff1d261f),
      outline: Color(0xff3b453e),
      outlineVariant: Color(0xff3b453e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d312e),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffacfeca),
      primaryFixed: Color(0xff004d2d),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00341d),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff2d4937),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff163222),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff373c7e),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff202567),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dbd5),
      surfaceBright: Color(0xfff7faf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f5ef),
      surfaceContainer: Color(0xffebefe9),
      surfaceContainerHigh: Color(0xffe6e9e3),
      surfaceContainerHighest: Color(0xffe0e4de),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff88d7a6),
      surfaceTint: Color(0xff88d7a6),
      onPrimary: Color(0xff003920),
      primaryContainer: Color(0xff005532),
      onPrimaryContainer: Color(0xffa5f6c2),
      secondary: Color(0xffaeceb7),
      onSecondary: Color(0xff1a3625),
      secondaryContainer: Color(0xff274331),
      onSecondaryContainer: Color(0xffb8d8c0),
      tertiary: Color(0xffbec2ff),
      onTertiary: Color(0xff24296a),
      tertiaryContainer: Color(0xff3f4486),
      onTertiaryContainer: Color(0xffe5e4ff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff101411),
      onBackground: Color(0xffe0e4de),
      surface: Color(0xff101411),
      onSurface: Color(0xffe0e4de),
      surfaceVariant: Color(0xff3f4942),
      onSurfaceVariant: Color(0xffbfc9bf),
      outline: Color(0xff89938a),
      outlineVariant: Color(0xff3f4942),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e4de),
      inverseOnSurface: Color(0xff2d312e),
      inversePrimary: Color(0xff176c43),
      primaryFixed: Color(0xffa3f4c1),
      onPrimaryFixed: Color(0xff002110),
      primaryFixedDim: Color(0xff88d7a6),
      onPrimaryFixedVariant: Color(0xff005230),
      secondaryFixed: Color(0xffcaebd2),
      onSecondaryFixed: Color(0xff042012),
      secondaryFixedDim: Color(0xffaeceb7),
      onSecondaryFixedVariant: Color(0xff304d3b),
      tertiaryFixed: Color(0xffe0e0ff),
      onTertiaryFixed: Color(0xff0c1055),
      tertiaryFixedDim: Color(0xffbec2ff),
      onTertiaryFixedVariant: Color(0xff3b4082),
      surfaceDim: Color(0xff101411),
      surfaceBright: Color(0xff363a36),
      surfaceContainerLowest: Color(0xff0b0f0c),
      surfaceContainerLow: Color(0xff181d19),
      surfaceContainer: Color(0xff1c211d),
      surfaceContainerHigh: Color(0xff272b27),
      surfaceContainerHighest: Color(0xff313632),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff8cdcaa),
      surfaceTint: Color(0xff88d7a6),
      onPrimary: Color(0xff001b0c),
      primaryContainer: Color(0xff52a073),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffb2d3bb),
      onSecondary: Color(0xff001b0d),
      secondaryContainer: Color(0xff799882),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffc4c6ff),
      onTertiary: Color(0xff060951),
      tertiaryContainer: Color(0xff868bd2),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101411),
      onBackground: Color(0xffe0e4de),
      surface: Color(0xff101411),
      onSurface: Color(0xfff8fcf6),
      surfaceVariant: Color(0xff3f4942),
      onSurfaceVariant: Color(0xffc3cdc3),
      outline: Color(0xff9ba69c),
      outlineVariant: Color(0xff7b867d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e4de),
      inverseOnSurface: Color(0xff272b27),
      inversePrimary: Color(0xff005331),
      primaryFixed: Color(0xffa3f4c1),
      onPrimaryFixed: Color(0xff001509),
      primaryFixedDim: Color(0xff88d7a6),
      onPrimaryFixedVariant: Color(0xff003f24),
      secondaryFixed: Color(0xffcaebd2),
      onSecondaryFixed: Color(0xff001509),
      secondaryFixedDim: Color(0xffaeceb7),
      onSecondaryFixedVariant: Color(0xff203c2b),
      tertiaryFixed: Color(0xffe0e0ff),
      onTertiaryFixed: Color(0xff01014d),
      tertiaryFixedDim: Color(0xffbec2ff),
      onTertiaryFixedVariant: Color(0xff2a2f71),
      surfaceDim: Color(0xff101411),
      surfaceBright: Color(0xff363a36),
      surfaceContainerLowest: Color(0xff0b0f0c),
      surfaceContainerLow: Color(0xff181d19),
      surfaceContainer: Color(0xff1c211d),
      surfaceContainerHigh: Color(0xff272b27),
      surfaceContainerHighest: Color(0xff313632),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffeffff0),
      surfaceTint: Color(0xff88d7a6),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff8cdcaa),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffeffff0),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb2d3bb),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffdf9ff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffc4c6ff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101411),
      onBackground: Color(0xffe0e4de),
      surface: Color(0xff101411),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff3f4942),
      onSurfaceVariant: Color(0xfff3fef3),
      outline: Color(0xffc3cdc3),
      outlineVariant: Color(0xffc3cdc3),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e4de),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff00311b),
      primaryFixed: Color(0xffa7f8c5),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff8cdcaa),
      onPrimaryFixedVariant: Color(0xff001b0c),
      secondaryFixed: Color(0xffceefd6),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb2d3bb),
      onSecondaryFixedVariant: Color(0xff001b0d),
      tertiaryFixed: Color(0xffe5e4ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffc4c6ff),
      onTertiaryFixedVariant: Color(0xff060951),
      surfaceDim: Color(0xff101411),
      surfaceBright: Color(0xff363a36),
      surfaceContainerLowest: Color(0xff0b0f0c),
      surfaceContainerLow: Color(0xff181d19),
      surfaceContainer: Color(0xff1c211d),
      surfaceContainerHigh: Color(0xff272b27),
      surfaceContainerHighest: Color(0xff313632),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary, 
    required this.surfaceTint, 
    required this.onPrimary, 
    required this.primaryContainer, 
    required this.onPrimaryContainer, 
    required this.secondary, 
    required this.onSecondary, 
    required this.secondaryContainer, 
    required this.onSecondaryContainer, 
    required this.tertiary, 
    required this.onTertiary, 
    required this.tertiaryContainer, 
    required this.onTertiaryContainer, 
    required this.error, 
    required this.onError, 
    required this.errorContainer, 
    required this.onErrorContainer, 
    required this.background, 
    required this.onBackground, 
    required this.surface, 
    required this.onSurface, 
    required this.surfaceVariant, 
    required this.onSurfaceVariant, 
    required this.outline, 
    required this.outlineVariant, 
    required this.shadow, 
    required this.scrim, 
    required this.inverseSurface, 
    required this.inverseOnSurface, 
    required this.inversePrimary, 
    required this.primaryFixed, 
    required this.onPrimaryFixed, 
    required this.primaryFixedDim, 
    required this.onPrimaryFixedVariant, 
    required this.secondaryFixed, 
    required this.onSecondaryFixed, 
    required this.secondaryFixedDim, 
    required this.onSecondaryFixedVariant, 
    required this.tertiaryFixed, 
    required this.onTertiaryFixed, 
    required this.tertiaryFixedDim, 
    required this.onTertiaryFixedVariant, 
    required this.surfaceDim, 
    required this.surfaceBright, 
    required this.surfaceContainerLowest, 
    required this.surfaceContainerLow, 
    required this.surfaceContainer, 
    required this.surfaceContainerHigh, 
    required this.surfaceContainerHighest, 
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
