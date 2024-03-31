import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4278209067),
      surfaceTint: Color(4279725123),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280185160),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282934610),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4291751894),
      onSecondaryContainer: Color(4281618750),
      tertiary: Color(4281612667),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283981217),
      onTertiaryContainer: Color(4294967295),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294441716),
      onBackground: Color(4279770393),
      surface: Color(4294441716),
      onSurface: Color(4279770393),
      surfaceVariant: Color(4292601307),
      onSurfaceVariant: Color(4282337602),
      outline: Color(4285495921),
      outlineVariant: Color(4290759103),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281151790),
      inverseOnSurface: Color(4293849836),
      inversePrimary: Color(4287158182),
      primaryFixed: Color(4288935105),
      onPrimaryFixed: Color(4278198544),
      primaryFixedDim: Color(4287158182),
      onPrimaryFixedVariant: Color(4278211120),
      secondaryFixed: Color(4291488722),
      onSecondaryFixed: Color(4278460434),
      secondaryFixedDim: Color(4289646263),
      onSecondaryFixedVariant: Color(4281355579),
      tertiaryFixed: Color(4292927743),
      onTertiaryFixed: Color(4278980693),
      tertiaryFixedDim: Color(4290691839),
      onTertiaryFixedVariant: Color(4282073218),
      surfaceDim: Color(4292336597),
      surfaceBright: Color(4294441716),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294047215),
      surfaceContainer: Color(4293652457),
      surfaceContainerHigh: Color(4293323235),
      surfaceContainerHighest: Color(4292928734),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4278209067),
      surfaceTint: Color(4279725123),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280185160),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281157943),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284382055),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281612667),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283981217),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294441716),
      onBackground: Color(4279770393),
      surface: Color(4294441716),
      onSurface: Color(4279770393),
      surfaceVariant: Color(4292601307),
      onSurfaceVariant: Color(4282074430),
      outline: Color(4283916889),
      outlineVariant: Color(4285758836),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281151790),
      inverseOnSurface: Color(4293849836),
      inversePrimary: Color(4287158182),
      primaryFixed: Color(4281566040),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4279462209),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284382055),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282737231),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4285099956),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283520665),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292336597),
      surfaceBright: Color(4294441716),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294047215),
      surfaceContainer: Color(4293652457),
      surfaceContainerHigh: Color(4293323235),
      surfaceContainerHighest: Color(4292928734),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4278200597),
      surfaceTint: Color(4279725123),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278209837),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278920984),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281157943),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4279507292),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4281810046),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294441716),
      onBackground: Color(4279770393),
      surface: Color(4294441716),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4292601307),
      onSurfaceVariant: Color(4280100383),
      outline: Color(4282074430),
      outlineVariant: Color(4282074430),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281151790),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4289527498),
      primaryFixed: Color(4278209837),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278203421),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281157943),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4279644706),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4281810046),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4280296807),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292336597),
      surfaceBright: Color(4294441716),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294047215),
      surfaceContainer: Color(4293652457),
      surfaceContainerHigh: Color(4293323235),
      surfaceContainerHighest: Color(4292928734),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4287158182),
      surfaceTint: Color(4287158182),
      onPrimary: Color(4278204704),
      primaryContainer: Color(4278211890),
      onPrimaryContainer: Color(4289066690),
      secondary: Color(4289646263),
      onSecondary: Color(4279907877),
      secondaryContainer: Color(4280763185),
      onSecondaryContainer: Color(4290304192),
      tertiary: Color(4290691839),
      onTertiary: Color(4280559978),
      tertiaryContainer: Color(4282336390),
      onTertiaryContainer: Color(4293256447),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279243793),
      onBackground: Color(4292928734),
      surface: Color(4279243793),
      onSurface: Color(4292928734),
      surfaceVariant: Color(4282337602),
      onSurfaceVariant: Color(4290759103),
      outline: Color(4287206282),
      outlineVariant: Color(4282337602),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292928734),
      inverseOnSurface: Color(4281151790),
      inversePrimary: Color(4279725123),
      primaryFixed: Color(4288935105),
      onPrimaryFixed: Color(4278198544),
      primaryFixedDim: Color(4287158182),
      onPrimaryFixedVariant: Color(4278211120),
      secondaryFixed: Color(4291488722),
      onSecondaryFixed: Color(4278460434),
      secondaryFixedDim: Color(4289646263),
      onSecondaryFixedVariant: Color(4281355579),
      tertiaryFixed: Color(4292927743),
      onTertiaryFixed: Color(4278980693),
      tertiaryFixedDim: Color(4290691839),
      onTertiaryFixedVariant: Color(4282073218),
      surfaceDim: Color(4279243793),
      surfaceBright: Color(4281743926),
      surfaceContainerLowest: Color(4278914828),
      surfaceContainerLow: Color(4279770393),
      surfaceContainer: Color(4280033565),
      surfaceContainerHigh: Color(4280757031),
      surfaceContainerHighest: Color(4281415218),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4287421610),
      surfaceTint: Color(4287158182),
      onPrimary: Color(4278197004),
      primaryContainer: Color(4283605107),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4289909691),
      onSecondary: Color(4278197005),
      secondaryContainer: Color(4286158978),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4291086079),
      onTertiary: Color(4278585681),
      tertiaryContainer: Color(4287007698),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4279243793),
      onBackground: Color(4292928734),
      surface: Color(4279243793),
      onSurface: Color(4294507766),
      surfaceVariant: Color(4282337602),
      onSurfaceVariant: Color(4291022275),
      outline: Color(4288390812),
      outlineVariant: Color(4286285437),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292928734),
      inverseOnSurface: Color(4280757031),
      inversePrimary: Color(4278211377),
      primaryFixed: Color(4288935105),
      onPrimaryFixed: Color(4278195465),
      primaryFixedDim: Color(4287158182),
      onPrimaryFixedVariant: Color(4278206244),
      secondaryFixed: Color(4291488722),
      onSecondaryFixed: Color(4278195465),
      secondaryFixedDim: Color(4289646263),
      onSecondaryFixedVariant: Color(4280302635),
      tertiaryFixed: Color(4292927743),
      onTertiaryFixed: Color(4278255949),
      tertiaryFixedDim: Color(4290691839),
      onTertiaryFixedVariant: Color(4280954737),
      surfaceDim: Color(4279243793),
      surfaceBright: Color(4281743926),
      surfaceContainerLowest: Color(4278914828),
      surfaceContainerLow: Color(4279770393),
      surfaceContainer: Color(4280033565),
      surfaceContainerHigh: Color(4280757031),
      surfaceContainerHighest: Color(4281415218),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4293918704),
      surfaceTint: Color(4287158182),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4287421610),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293918704),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4289909691),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294834687),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4291086079),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279243793),
      onBackground: Color(4292928734),
      surface: Color(4279243793),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4282337602),
      onSurfaceVariant: Color(4294180595),
      outline: Color(4291022275),
      outlineVariant: Color(4291022275),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292928734),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4278202651),
      primaryFixed: Color(4289198277),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4287421610),
      onPrimaryFixedVariant: Color(4278197004),
      secondaryFixed: Color(4291751894),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4289909691),
      onSecondaryFixedVariant: Color(4278197005),
      tertiaryFixed: Color(4293256447),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4291086079),
      onTertiaryFixedVariant: Color(4278585681),
      surfaceDim: Color(4279243793),
      surfaceBright: Color(4281743926),
      surfaceContainerLowest: Color(4278914828),
      surfaceContainerLow: Color(4279770393),
      surfaceContainer: Color(4280033565),
      surfaceContainerHigh: Color(4280757031),
      surfaceContainerHighest: Color(4281415218),
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
