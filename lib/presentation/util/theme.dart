import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  onPrimary: Colors.black,
  onSecondary: Colors.white,
  onBackground: Colors.white,
  onSurface: Colors.white,
  onError: Colors.black,
  primary: Colors.teal[500],
  primaryVariant: Colors.teal[700],
  secondary: Colors.cyan[200],
  secondaryVariant: Colors.cyan[700],
  surface: const Color(0xfff5f5f5),
  background: Colors.white,
  error: const Color(0xffb00020),
);

final IconThemeData lightIconThemeData =
    IconThemeData(color: lightColorScheme.primary, size: 30);

final lightTextTheme = TextTheme(
  headline1: GoogleFonts.montserrat(
    fontSize: 97,
    fontWeight: FontWeight.w200,
    letterSpacing: -1.5,
    color: lightColorScheme.onPrimary,
  ),
  headline2: GoogleFonts.montserrat(
    fontSize: 61,
    fontWeight: FontWeight.w200,
    letterSpacing: -0.5,
    color: lightColorScheme.onPrimary,
  ),
  headline3: GoogleFonts.montserrat(
    fontSize: 48,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: lightColorScheme.onPrimary,
  ),
  headline4: GoogleFonts.montserrat(
    fontSize: 34,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
    color: lightColorScheme.onPrimary,
  ),
  headline5: GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: lightColorScheme.onPrimary,
  ),
  headline6: GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.15,
    color: lightColorScheme.onPrimary,
  ),
  subtitle1: GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.15,
    color: lightColorScheme.onPrimary,
  ),
  subtitle2: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
    color: lightColorScheme.onPrimary,
  ),
  bodyText1: GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
    color: lightColorScheme.onPrimary,
  ),
  bodyText2: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
    color: lightColorScheme.onPrimary,
  ),
  button: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.25,
    color: lightColorScheme.onPrimary,
  ),
  caption: GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.4,
    color: lightColorScheme.onPrimary,
  ),
  overline: GoogleFonts.montserrat(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.5,
    color: lightColorScheme.onPrimary,
  ),
);

ThemeData lightTheme() => ThemeData(
      primarySwatch: Colors.red,
      brightness: Brightness.light,
      primaryColor: lightColorScheme.primary,
      primaryColorBrightness: ThemeData.estimateBrightnessForColor(
        lightColorScheme.primary,
      ),
      primaryColorLight: lightColorScheme.primary,
      primaryColorDark: lightColorScheme.primaryVariant,
      accentColor: lightColorScheme.secondary,
      accentColorBrightness: ThemeData.estimateBrightnessForColor(
        lightColorScheme.secondary,
      ),
      canvasColor: lightColorScheme.surface,
      scaffoldBackgroundColor: lightColorScheme.background,
      bottomAppBarColor: lightColorScheme.surface,
      cardColor: lightColorScheme.surface,
      dividerColor: lightColorScheme.primary,
      highlightColor: lightColorScheme.primary.withOpacity(0.2),
      splashColor: lightColorScheme.secondary.withOpacity(0.2),
      selectedRowColor: lightColorScheme.primary.withOpacity(0.2),
      unselectedWidgetColor: Colors.black,
      disabledColor: Colors.grey,
      buttonColor: lightColorScheme.surface,
      toggleableActiveColor: lightColorScheme.primary,
      secondaryHeaderColor: lightColorScheme.surface,
      textSelectionColor: Colors.red[300],
      cursorColor: lightColorScheme.primary,
      textSelectionHandleColor: Colors.grey[300],
      backgroundColor: lightColorScheme.surface,
      dialogBackgroundColor: lightColorScheme.surface,
      indicatorColor: lightColorScheme.primary,
      hintColor: lightColorScheme.onPrimary,
      errorColor: lightColorScheme.error,
      buttonTheme: ButtonThemeData(
          minWidth: double.infinity,
          height: 50,
          padding: const EdgeInsets.only(left: 16, right: 16),
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            side: BorderSide(
              color: lightColorScheme.primary,
              width: 2,
              style: BorderStyle.none,
            ),
          ),
          alignedDropdown: true,
          buttonColor: lightColorScheme.background,
          disabledColor: Colors.grey,
          highlightColor: lightColorScheme.primary.withOpacity(0.2),
          splashColor: lightColorScheme.secondary.withOpacity(0.2),
          focusColor: lightColorScheme.primary.withOpacity(0.2),
          hoverColor: lightColorScheme.secondary.withOpacity(0.2),
          colorScheme: lightColorScheme),
      textTheme: lightTextTheme,
      primaryTextTheme: lightTextTheme,
      accentTextTheme: lightTextTheme,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(20),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: lightColorScheme.primary,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
      iconTheme: lightIconThemeData,
      primaryIconTheme: lightIconThemeData,
      accentIconTheme: lightIconThemeData,
      sliderTheme: SliderThemeData(
        activeTrackColor: lightColorScheme.primary,
        inactiveTrackColor: Colors.grey,
        disabledActiveTrackColor: Colors.grey,
        disabledInactiveTrackColor: Colors.grey,
        activeTickMarkColor: lightColorScheme.primary,
        inactiveTickMarkColor: Colors.grey,
        disabledActiveTickMarkColor: Colors.grey,
        disabledInactiveTickMarkColor: Colors.grey,
        thumbColor: lightColorScheme.primary,
        disabledThumbColor: Colors.grey,
        thumbShape: const PaddleSliderValueIndicatorShape(),
        overlayColor: lightColorScheme.primary.withOpacity(0.2),
        valueIndicatorColor: lightColorScheme.primary,
        valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
        valueIndicatorTextStyle: lightTextTheme.bodyText1,
      ),
      tabBarTheme: TabBarTheme(
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: lightColorScheme.primary,
        unselectedLabelColor: Colors.grey,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: lightColorScheme.primary.withOpacity(0.2),
        brightness: lightColorScheme.brightness,
        deleteIconColor: lightColorScheme.primary,
        disabledColor: Colors.grey,
        labelPadding: const EdgeInsets.only(left: 8, right: 8),
        labelStyle: lightTextTheme.bodyText1,
        padding: const EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
        secondaryLabelStyle: lightTextTheme.bodyText1,
        secondarySelectedColor: lightColorScheme.secondary,
        selectedColor: lightColorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          side: BorderSide(
            color: lightColorScheme.primary,
            width: 2,
            style: BorderStyle.none,
          ),
        ),
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          side: BorderSide(
            color: lightColorScheme.primary,
            width: 2,
            style: BorderStyle.none,
          ),
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
        color: lightColorScheme.background,
        elevation: 0,
        brightness: lightColorScheme.brightness,
        iconTheme: lightIconThemeData,
        textTheme: lightTextTheme,
        actionsIconTheme: lightIconThemeData,
        centerTitle: true,
      ),
      applyElevationOverlayColor: true,
      bannerTheme: MaterialBannerThemeData(
        backgroundColor: lightColorScheme.surface,
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        contentTextStyle: lightTextTheme.bodyText1,
        leadingPadding: const EdgeInsets.all(5),
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: lightColorScheme.background,
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightColorScheme.background,
        elevation: 0,
        selectedIconTheme: lightIconThemeData,
        unselectedIconTheme: lightIconThemeData.copyWith(color: Colors.grey),
        selectedItemColor: lightColorScheme.primary,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: lightTextTheme.bodyText1,
        unselectedLabelStyle:
            lightTextTheme.bodyText1.copyWith(color: Colors.grey),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        backgroundColor: lightColorScheme.surface,
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        modalBackgroundColor: lightColorScheme.surface,
        modalElevation: 5,
      ),
      cardTheme: CardTheme(
        clipBehavior: Clip.antiAlias,
        color: lightColorScheme.surface,
        elevation: 3,
        margin: const EdgeInsets.all(5.0),
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          side: BorderSide(
            color: lightColorScheme.primary,
            width: 2,
            style: BorderStyle.none,
          ),
        ),
      ),
      colorScheme: lightColorScheme,
      typography: Typography.material2018(),
      tooltipTheme: TooltipThemeData(
        waitDuration: const Duration(seconds: 1),
        padding: const EdgeInsets.all(5.0),
        textStyle: lightTextTheme.bodyText1,
        showDuration: const Duration(seconds: 3),
        preferBelow: true,
      ),
      dividerTheme: DividerThemeData(
        color: lightColorScheme.primary,
        thickness: 2.0,
        indent: 20,
        endIndent: 20,
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        textStyle: lightTextTheme.button,
        color: lightColorScheme.primary,
        selectedColor: lightColorScheme.primary,
        disabledColor: Colors.grey,
        fillColor: const Color(0x00000000),
        focusColor: lightColorScheme.primary,
        highlightColor: lightColorScheme.primary.withOpacity(0.2),
        hoverColor: lightColorScheme.secondary.withOpacity(0.2),
        splashColor: lightColorScheme.secondary.withOpacity(0.2),
        borderColor: lightColorScheme.primary,
        selectedBorderColor: lightColorScheme.primary,
        disabledBorderColor: Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        borderWidth: 2,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: lightColorScheme.primary,
        selectionColor: Colors.red[300],
        selectionHandleColor: Colors.red[300],
      ),
      fontFamily: GoogleFonts.montserrat().fontFamily,
      focusColor: lightColorScheme.primary.withOpacity(0.2),
      hoverColor: lightColorScheme.secondary.withOpacity(0.2),
      splashFactory: InkRipple.splashFactory,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: lightColorScheme.primary,
        splashColor: lightColorScheme.secondary.withOpacity(0.2),
        elevation: 5,
        focusColor: lightColorScheme.primary.withOpacity(0.2),
        disabledElevation: 0,
        focusElevation: 0,
        foregroundColor: lightColorScheme.background,
        hoverColor: lightColorScheme.secondary.withOpacity(0.2),
        hoverElevation: 8,
        highlightElevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          side: BorderSide(
            color: lightColorScheme.primary,
            width: 2,
            style: BorderStyle.none,
          ),
        ),
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: lightColorScheme.background,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          side: BorderSide(
            color: lightColorScheme.primary,
            width: 2,
            style: BorderStyle.none,
          ),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: lightColorScheme.surface,
        actionTextColor: lightColorScheme.primary,
        disabledActionTextColor: Colors.grey,
        contentTextStyle: lightTextTheme.bodyText1,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          side: BorderSide(
            color: lightColorScheme.primary,
            width: 2,
            style: BorderStyle.none,
          ),
        ),
        behavior: SnackBarBehavior.fixed,
      ),
      materialTapTargetSize: MaterialTapTargetSize.padded,
      fixTextFieldOutlineLabel: true,
      useTextSelectionTheme: true,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: lightColorScheme.primary),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(primary: lightColorScheme.primary),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(primary: lightColorScheme.primary),
      ),
    );

final darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onBackground: Colors.black,
  onSurface: Colors.black,
  onError: Colors.white,
  primary: Colors.teal[200],
  primaryVariant: Colors.teal[700],
  secondary: Colors.cyan[200],
  secondaryVariant: Colors.cyan[200],
  surface: const Color(0xff121212),
  background: const Color(0xff121212),
  error: const Color(0xffcf6679),
);

final IconThemeData darkIconThemeData =
    IconThemeData(color: darkColorScheme.primary, size: 30);

final darkTextTheme = TextTheme(
  headline1: GoogleFonts.montserrat(
    fontSize: 97,
    fontWeight: FontWeight.w200,
    letterSpacing: -1.5,
    color: darkColorScheme.onPrimary,
  ),
  headline2: GoogleFonts.montserrat(
    fontSize: 61,
    fontWeight: FontWeight.w200,
    letterSpacing: -0.5,
    color: darkColorScheme.onPrimary,
  ),
  headline3: GoogleFonts.montserrat(
    fontSize: 48,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: darkColorScheme.onPrimary,
  ),
  headline4: GoogleFonts.montserrat(
    fontSize: 34,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
    color: darkColorScheme.onPrimary,
  ),
  headline5: GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: darkColorScheme.onPrimary,
  ),
  headline6: GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.15,
    color: darkColorScheme.onPrimary,
  ),
  subtitle1: GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.15,
    color: darkColorScheme.onPrimary,
  ),
  subtitle2: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
    color: darkColorScheme.onPrimary,
  ),
  bodyText1: GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
    color: darkColorScheme.onPrimary,
  ),
  bodyText2: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
    color: darkColorScheme.onPrimary,
  ),
  button: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.25,
    color: darkColorScheme.onPrimary,
  ),
  caption: GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.4,
    color: darkColorScheme.onPrimary,
  ),
  overline: GoogleFonts.montserrat(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.5,
    color: darkColorScheme.onPrimary,
  ),
);

ThemeData darkTheme() => ThemeData(
      primarySwatch: Colors.red,
      brightness: Brightness.dark,
      primaryColor: darkColorScheme.primary,
      primaryColorBrightness: ThemeData.estimateBrightnessForColor(
        darkColorScheme.primary,
      ),
      primaryColorLight: darkColorScheme.primary,
      primaryColorDark: darkColorScheme.primaryVariant,
      accentColor: darkColorScheme.secondary,
      accentColorBrightness: ThemeData.estimateBrightnessForColor(
        darkColorScheme.secondary,
      ),
      canvasColor: darkColorScheme.surface,
      scaffoldBackgroundColor: darkColorScheme.background,
      bottomAppBarColor: darkColorScheme.surface,
      cardColor: darkColorScheme.surface,
      dividerColor: darkColorScheme.primary,
      highlightColor: darkColorScheme.primary.withOpacity(0.2),
      splashColor: darkColorScheme.secondary.withOpacity(0.2),
      selectedRowColor: darkColorScheme.primary.withOpacity(0.2),
      unselectedWidgetColor: Colors.black,
      disabledColor: Colors.grey,
      buttonColor: darkColorScheme.surface,
      toggleableActiveColor: darkColorScheme.primary,
      secondaryHeaderColor: darkColorScheme.surface,
      textSelectionColor: Colors.red[300],
      cursorColor: darkColorScheme.primary,
      textSelectionHandleColor: Colors.grey[300],
      backgroundColor: darkColorScheme.surface,
      dialogBackgroundColor: darkColorScheme.surface,
      indicatorColor: darkColorScheme.primary,
      hintColor: darkColorScheme.onPrimary,
      errorColor: darkColorScheme.error,
      buttonTheme: ButtonThemeData(
          minWidth: double.infinity,
          height: 50,
          padding: const EdgeInsets.only(left: 16, right: 16),
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            side: BorderSide(
              color: darkColorScheme.primary,
              width: 2,
              style: BorderStyle.none,
            ),
          ),
          alignedDropdown: true,
          buttonColor: darkColorScheme.background,
          disabledColor: Colors.grey,
          highlightColor: darkColorScheme.primary.withOpacity(0.2),
          splashColor: darkColorScheme.secondary.withOpacity(0.2),
          focusColor: darkColorScheme.primary.withOpacity(0.2),
          hoverColor: darkColorScheme.secondary.withOpacity(0.2),
          colorScheme: darkColorScheme),
      textTheme: darkTextTheme,
      primaryTextTheme: darkTextTheme,
      accentTextTheme: darkTextTheme,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(20),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: darkColorScheme.primary,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
      iconTheme: darkIconThemeData,
      primaryIconTheme: darkIconThemeData,
      accentIconTheme: darkIconThemeData,
      sliderTheme: SliderThemeData(
        activeTrackColor: darkColorScheme.primary,
        inactiveTrackColor: Colors.grey,
        disabledActiveTrackColor: Colors.grey,
        disabledInactiveTrackColor: Colors.grey,
        activeTickMarkColor: darkColorScheme.primary,
        inactiveTickMarkColor: Colors.grey,
        disabledActiveTickMarkColor: Colors.grey,
        disabledInactiveTickMarkColor: Colors.grey,
        thumbColor: darkColorScheme.primary,
        disabledThumbColor: Colors.grey,
        thumbShape: const PaddleSliderValueIndicatorShape(),
        overlayColor: darkColorScheme.primary.withOpacity(0.2),
        valueIndicatorColor: darkColorScheme.primary,
        valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
        valueIndicatorTextStyle: darkTextTheme.bodyText1,
      ),
      tabBarTheme: TabBarTheme(
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: darkColorScheme.primary,
        unselectedLabelColor: Colors.grey,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: darkColorScheme.primary.withOpacity(0.2),
        brightness: darkColorScheme.brightness,
        deleteIconColor: darkColorScheme.primary,
        disabledColor: Colors.grey,
        labelPadding: const EdgeInsets.only(left: 8, right: 8),
        labelStyle: darkTextTheme.bodyText1,
        padding: const EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
        secondaryLabelStyle: darkTextTheme.bodyText1,
        secondarySelectedColor: darkColorScheme.secondary,
        selectedColor: darkColorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          side: BorderSide(
            color: darkColorScheme.primary,
            width: 2,
            style: BorderStyle.none,
          ),
        ),
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          side: BorderSide(
            color: darkColorScheme.primary,
            width: 2,
            style: BorderStyle.none,
          ),
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
        color: darkColorScheme.background,
        elevation: 0,
        brightness: darkColorScheme.brightness,
        iconTheme: darkIconThemeData,
        textTheme: darkTextTheme,
        actionsIconTheme: darkIconThemeData,
        centerTitle: true,
      ),
      applyElevationOverlayColor: true,
      bannerTheme: MaterialBannerThemeData(
        backgroundColor: darkColorScheme.surface,
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        contentTextStyle: darkTextTheme.bodyText1,
        leadingPadding: const EdgeInsets.all(5),
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: darkColorScheme.background,
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkColorScheme.background,
        elevation: 0,
        selectedIconTheme: darkIconThemeData,
        unselectedIconTheme: darkIconThemeData.copyWith(color: Colors.grey),
        selectedItemColor: darkColorScheme.primary,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: darkTextTheme.bodyText1,
        unselectedLabelStyle:
            darkTextTheme.bodyText1.copyWith(color: Colors.grey),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        backgroundColor: darkColorScheme.surface,
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        modalBackgroundColor: darkColorScheme.surface,
        modalElevation: 5,
      ),
      cardTheme: CardTheme(
        clipBehavior: Clip.antiAlias,
        color: darkColorScheme.surface,
        elevation: 3,
        margin: const EdgeInsets.all(5.0),
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          side: BorderSide(
            color: darkColorScheme.primary,
            width: 2,
            style: BorderStyle.none,
          ),
        ),
      ),
      colorScheme: darkColorScheme,
      typography: Typography.material2018(),
      tooltipTheme: TooltipThemeData(
        waitDuration: const Duration(seconds: 1),
        padding: const EdgeInsets.all(5.0),
        textStyle: darkTextTheme.bodyText1,
        showDuration: const Duration(seconds: 3),
        preferBelow: true,
      ),
      dividerTheme: DividerThemeData(
        color: darkColorScheme.primary,
        thickness: 2.0,
        indent: 20,
        endIndent: 20,
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        textStyle: darkTextTheme.button,
        color: darkColorScheme.primary,
        selectedColor: darkColorScheme.primary,
        disabledColor: Colors.grey,
        fillColor: const Color(0x00000000),
        focusColor: darkColorScheme.primary,
        highlightColor: darkColorScheme.primary.withOpacity(0.2),
        hoverColor: darkColorScheme.secondary.withOpacity(0.2),
        splashColor: darkColorScheme.secondary.withOpacity(0.2),
        borderColor: darkColorScheme.primary,
        selectedBorderColor: darkColorScheme.primary,
        disabledBorderColor: Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        borderWidth: 2,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: darkColorScheme.primary,
        selectionColor: Colors.red[300],
        selectionHandleColor: Colors.red[300],
      ),
      fontFamily: GoogleFonts.montserrat().fontFamily,
      focusColor: darkColorScheme.primary.withOpacity(0.2),
      hoverColor: darkColorScheme.secondary.withOpacity(0.2),
      splashFactory: InkRipple.splashFactory,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: darkColorScheme.primary,
        splashColor: darkColorScheme.secondary.withOpacity(0.2),
        elevation: 5,
        focusColor: darkColorScheme.primary.withOpacity(0.2),
        disabledElevation: 0,
        focusElevation: 0,
        foregroundColor: darkColorScheme.background,
        hoverColor: darkColorScheme.secondary.withOpacity(0.2),
        hoverElevation: 8,
        highlightElevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          side: BorderSide(
            color: darkColorScheme.primary,
            width: 2,
            style: BorderStyle.none,
          ),
        ),
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: darkColorScheme.background,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          side: BorderSide(
            color: darkColorScheme.primary,
            width: 2,
            style: BorderStyle.none,
          ),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: darkColorScheme.surface,
        actionTextColor: darkColorScheme.primary,
        disabledActionTextColor: Colors.grey,
        contentTextStyle: darkTextTheme.bodyText1,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          side: BorderSide(
            color: darkColorScheme.primary,
            width: 2,
            style: BorderStyle.none,
          ),
        ),
        behavior: SnackBarBehavior.fixed,
      ),
      materialTapTargetSize: MaterialTapTargetSize.padded,
      fixTextFieldOutlineLabel: true,
      useTextSelectionTheme: true,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: darkColorScheme.primary),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(primary: darkColorScheme.primary),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(primary: darkColorScheme.primary),
      ),
    );