import 'package:flutter/material.dart';
import 'colors.dart';

@immutable
class ExtendedTheme extends ThemeExtension<ExtendedTheme> {
  const ExtendedTheme({
    required this.selectBackgroundColor,
    required this.selectedTextColor,
    required this.dropdownBackgroundColor,
    required this.dropdownTextColor,
    required this.headerDashboardActiveButton,
    required this.headerBackgroundColor,
    required this.headerTextColor,
    required this.headerActiveTextColor,
    required this.walletListBackgroundColor,
    required this.walletActiveItemBackgroundColor,
    required this.walletActiveItemBorderColor,
    required this.walletItemBorderColor,
    required this.inputIconColor,
    required this.txBorderColor,
    required this.txValuePositiveColor,
    required this.txValueNegativeColor,
    required this.stepBarActiveColor,
    required this.stepBarActionableColor,
    required this.stepBarColor,
    required this.switchActiveBg,
    required this.switchActiveFg,
    required this.switchInactiveBg,
    required this.switchInactiveFg,
    required this.switchBorderColor,
    required this.dialogBackground,
    required this.copiedSnackbarBg,
    required this.copiedSnackbarText,
    required this.monoSmallText,
    required this.monoRegularText,
    required this.monoMediumText,
    required this.monoLargeText,
    required this.errorColor,
    required this.activeClickableBoxBgColor,
    required this.activeClickableBoxBorderColor,
    required this.inactiveClickableBoxBgColor,
    required this.inactiveClickableBoxBorderColor,
    required this.numberPaginatiorSelectedBg,
    required this.numberPaginatiorUnselectedFg,
  });
  final Color? selectBackgroundColor;
  final Color? selectedTextColor;
  final Color? dropdownBackgroundColor;
  final Color? dropdownTextColor;
  final Color? headerDashboardActiveButton;
  final Color? headerTextColor;
  final Color? headerActiveTextColor;
  final Color? headerBackgroundColor;
  final Color? walletListBackgroundColor;
  final Color? walletActiveItemBorderColor;
  final Color? walletActiveItemBackgroundColor;
  final Color? walletItemBorderColor;
  final Color? inputIconColor;
  final Color? txBorderColor;
  final Color? txValuePositiveColor;
  final Color? txValueNegativeColor;
  final Color? stepBarActiveColor;
  final Color? stepBarActionableColor;
  final Color? stepBarColor;
  final Color? switchActiveBg;
  final Color? switchActiveFg;
  final Color? switchInactiveBg;
  final Color? switchInactiveFg;
  final Color? switchBorderColor;
  final Color? dialogBackground;
  final Color? copiedSnackbarBg;
  final Color? copiedSnackbarText;
  final TextStyle? monoSmallText;
  final TextStyle? monoRegularText;
  final TextStyle? monoMediumText;
  final TextStyle? monoLargeText;
  final Color? errorColor;
  final Color? activeClickableBoxBgColor;
  final Color? activeClickableBoxBorderColor;
  final Color? inactiveClickableBoxBgColor;
  final Color? inactiveClickableBoxBorderColor;
  final Color? numberPaginatiorSelectedBg;
  final Color? numberPaginatiorUnselectedFg;
  @override
  ExtendedTheme copyWith(
      {Color? selectBackgroundColor,
      Color? selectedTextColor,
      Color? dropdownBackgroundColor,
      Color? dropdownTextColor,
      Color? headerDashboardActiveButton,
      Color? walletListBackgroundColor,
      Color? walletActiveItemBorderColor,
      Color? walletItemBorderColor,
      Color? inputIconColor,
      Color? walletActiveItemBackgroundColor,
      Color? txBorderColor,
      Color? txValuePositiveColor,
      Color? txValueNegativeColor,
      Color? stepBarActiveColor,
      Color? stepBarActionableColor,
      Color? stepBarColor,
      Color? switchActiveBg,
      Color? switchActiveFg,
      Color? switchInactiveBg,
      Color? switchInactiveFg,
      Color? switchBorderColor,
      Color? dialogBackground,
      Color? copiedSnackbarBg,
      Color? copiedSnackbarText,
      TextStyle? monoSmallText,
      TextStyle? monoRegularText,
      TextStyle? monoMediumText,
      TextStyle? monoLargeText,
      Color? errorColor,
      Color? activeClickableBoxBgColor,
      Color? activeClickableBoxBorderColor,
      Color? inactiveClickableBoxBgColor,
      Color? inactiveClickableBoxBorderColo,
      Color? numberPaginatiorSelectedBg,
      Color? numberPaginatiorUnselectedFg,
      r}) {
    return ExtendedTheme(
      selectBackgroundColor:
          selectBackgroundColor ?? this.selectBackgroundColor,
      selectedTextColor: selectedTextColor ?? this.selectedTextColor,
      dropdownBackgroundColor:
          dropdownBackgroundColor ?? this.dropdownBackgroundColor,
      dropdownTextColor: dropdownTextColor ?? this.dropdownTextColor,
      headerDashboardActiveButton:
          headerDashboardActiveButton ?? this.headerDashboardActiveButton,
      headerBackgroundColor:
          headerBackgroundColor ?? this.headerBackgroundColor,
      headerTextColor: headerTextColor ?? this.headerTextColor,
      headerActiveTextColor:
          headerActiveTextColor ?? this.headerActiveTextColor,
      walletListBackgroundColor:
          walletListBackgroundColor ?? this.walletListBackgroundColor,
      walletActiveItemBackgroundColor: walletActiveItemBackgroundColor ??
          this.walletActiveItemBackgroundColor,
      walletActiveItemBorderColor:
          walletActiveItemBorderColor ?? this.walletActiveItemBorderColor,
      walletItemBorderColor:
          walletItemBorderColor ?? this.walletItemBorderColor,
      inputIconColor: inputIconColor ?? this.inputIconColor,
      txBorderColor: txBorderColor ?? this.txBorderColor,
      txValueNegativeColor: txValueNegativeColor ?? this.txValueNegativeColor,
      txValuePositiveColor: txValuePositiveColor ?? this.txValuePositiveColor,
      stepBarActiveColor: stepBarActiveColor ?? this.stepBarActiveColor,
      stepBarActionableColor:
          stepBarActionableColor ?? this.stepBarActionableColor,
      stepBarColor: stepBarColor ?? this.stepBarColor,
      switchActiveBg: switchActiveBg ?? this.switchActiveBg,
      switchActiveFg: switchActiveFg ?? this.switchActiveFg,
      switchInactiveBg: switchInactiveBg ?? this.switchInactiveBg,
      switchInactiveFg: switchInactiveFg ?? this.switchInactiveFg,
      switchBorderColor: switchBorderColor ?? this.switchBorderColor,
      errorColor: errorColor ?? this.errorColor,
      activeClickableBoxBgColor:
          activeClickableBoxBgColor ?? this.activeClickableBoxBgColor,
      activeClickableBoxBorderColor:
          activeClickableBoxBorderColor ?? this.activeClickableBoxBorderColor,
      inactiveClickableBoxBgColor:
          inactiveClickableBoxBgColor ?? this.inactiveClickableBoxBgColor,
      inactiveClickableBoxBorderColor: inactiveClickableBoxBorderColor ??
          this.inactiveClickableBoxBorderColor,
      dialogBackground: dialogBackground ?? this.dialogBackground,
      copiedSnackbarBg: copiedSnackbarBg ?? copiedSnackbarBg,
      copiedSnackbarText: copiedSnackbarText ?? copiedSnackbarText,
      monoSmallText: monoSmallText ?? this.monoSmallText,
      monoRegularText: monoRegularText ?? this.monoRegularText,
      monoMediumText: monoMediumText ?? this.monoMediumText,
      monoLargeText: monoLargeText ?? this.monoLargeText,
      numberPaginatiorSelectedBg:
          numberPaginatiorSelectedBg ?? this.numberPaginatiorSelectedBg,
      numberPaginatiorUnselectedFg:
          numberPaginatiorUnselectedFg ?? this.numberPaginatiorUnselectedFg,
    );
  }

  // Controls how the properties change on theme changes
  @override
  ExtendedTheme lerp(ThemeExtension<ExtendedTheme>? other, double t) {
    if (other is! ExtendedTheme) {
      return this;
    }
    return ExtendedTheme(
      selectBackgroundColor:
          Color.lerp(selectBackgroundColor, other.selectBackgroundColor, t),
      selectedTextColor:
          Color.lerp(selectedTextColor, other.selectedTextColor, t),
      dropdownBackgroundColor:
          Color.lerp(dropdownBackgroundColor, other.dropdownBackgroundColor, t),
      dropdownTextColor:
          Color.lerp(dropdownTextColor, other.dropdownTextColor, t),
      headerDashboardActiveButton: Color.lerp(
          headerDashboardActiveButton, other.headerDashboardActiveButton, t),
      headerBackgroundColor:
          Color.lerp(headerBackgroundColor, other.dropdownTextColor, t),
      headerTextColor: Color.lerp(headerTextColor, other.dropdownTextColor, t),
      headerActiveTextColor:
          Color.lerp(headerActiveTextColor, other.dropdownTextColor, t),
      walletListBackgroundColor: Color.lerp(
          walletListBackgroundColor, other.walletListBackgroundColor, t),
      walletActiveItemBackgroundColor: Color.lerp(
          walletActiveItemBackgroundColor,
          other.walletActiveItemBackgroundColor,
          t),
      walletActiveItemBorderColor: Color.lerp(
          walletActiveItemBorderColor, other.walletActiveItemBorderColor, t),
      walletItemBorderColor:
          Color.lerp(walletItemBorderColor, other.walletItemBorderColor, t),
      inputIconColor: Color.lerp(inputIconColor, other.inputIconColor, t),
      txBorderColor: Color.lerp(txBorderColor, other.txBorderColor, t),
      txValueNegativeColor:
          Color.lerp(txValueNegativeColor, other.txValueNegativeColor, t),
      txValuePositiveColor:
          Color.lerp(txValuePositiveColor, other.txValuePositiveColor, t),
      stepBarActiveColor:
          Color.lerp(stepBarActiveColor, other.stepBarActiveColor, t),
      stepBarActionableColor:
          Color.lerp(stepBarActiveColor, other.stepBarActionableColor, t),
      stepBarColor: Color.lerp(stepBarColor, other.stepBarColor, t),
      dialogBackground: Color.lerp(dialogBackground, other.dialogBackground, t),
      switchActiveBg: Color.lerp(switchActiveBg, other.switchActiveBg, t),
      switchActiveFg: Color.lerp(switchActiveFg, other.switchActiveFg, t),
      switchInactiveBg: Color.lerp(switchInactiveBg, other.switchInactiveBg, t),
      switchInactiveFg: Color.lerp(switchInactiveFg, other.switchInactiveFg, t),
      switchBorderColor:
          Color.lerp(switchBorderColor, other.switchBorderColor, t),
      errorColor: Color.lerp(errorColor, other.errorColor, t),
      activeClickableBoxBgColor: Color.lerp(
          activeClickableBoxBgColor, other.activeClickableBoxBgColor, t),
      activeClickableBoxBorderColor: Color.lerp(activeClickableBoxBorderColor,
          other.activeClickableBoxBorderColor, t),
      inactiveClickableBoxBgColor: Color.lerp(
          inactiveClickableBoxBgColor, other.inactiveClickableBoxBgColor, t),
      inactiveClickableBoxBorderColor: Color.lerp(
          inactiveClickableBoxBorderColor,
          other.inactiveClickableBoxBorderColor,
          t),
      numberPaginatiorSelectedBg: Color.lerp(
          numberPaginatiorSelectedBg, other.numberPaginatiorSelectedBg, t),
      numberPaginatiorUnselectedFg: Color.lerp(
          numberPaginatiorUnselectedFg, other.numberPaginatiorUnselectedFg, t),
      copiedSnackbarBg: Color.lerp(copiedSnackbarBg, other.copiedSnackbarBg, t),
      copiedSnackbarText:
          Color.lerp(copiedSnackbarText, other.copiedSnackbarText, t),
      monoSmallText: TextStyle.lerp(monoSmallText, other.monoSmallText, t),
      monoRegularText:
          TextStyle.lerp(monoRegularText, other.monoRegularText, t),
      monoMediumText: TextStyle.lerp(monoMediumText, other.monoMediumText, t),
      monoLargeText: TextStyle.lerp(monoLargeText, other.monoLargeText, t),
    );
  }

  // the light theme
  static const light = ExtendedTheme(
    selectBackgroundColor: WitnetPallet.darkBlue2,
    selectedTextColor: WitnetPallet.white,
    dropdownBackgroundColor: WitnetPallet.white,
    dropdownTextColor: WitnetPallet.darkGrey,
    headerDashboardActiveButton: WitnetPallet.white,
    headerActiveTextColor: WitnetPallet.witnetGreen1,
    headerTextColor: WitnetPallet.witnetGreen1,
    headerBackgroundColor: WitnetPallet.darkBlue2,
    walletListBackgroundColor: WitnetPallet.darkBlue2,
    walletActiveItemBackgroundColor: WitnetPallet.opacitywitnetGreen2,
    walletActiveItemBorderColor: WitnetPallet.witnetGreen1,
    walletItemBorderColor: WitnetPallet.lightGrey,
    inputIconColor: WitnetPallet.lightGrey,
    txBorderColor: WitnetPallet.lightGrey,
    txValueNegativeColor: WitnetPallet.darkRed,
    txValuePositiveColor: WitnetPallet.darkGreen,
    stepBarActiveColor: WitnetPallet.witnetGreen1,
    stepBarActionableColor: WitnetPallet.darkGrey,
    stepBarColor: WitnetPallet.lightGrey,
    switchActiveBg: WitnetPallet.darkBlue2,
    switchActiveFg: WitnetPallet.white,
    switchInactiveBg: WitnetPallet.white,
    switchInactiveFg: WitnetPallet.darkGrey,
    switchBorderColor: WitnetPallet.darkBlue2,
    errorColor: WitnetPallet.darkRed,
    activeClickableBoxBgColor: Color.fromARGB(34, 65, 190, 165),
    activeClickableBoxBorderColor: WitnetPallet.witnetGreen1,
    inactiveClickableBoxBgColor: WitnetPallet.white,
    inactiveClickableBoxBorderColor: WitnetPallet.lightGrey,
    dialogBackground: WitnetPallet.white,
    numberPaginatiorSelectedBg: WitnetPallet.darkBlue2,
    numberPaginatiorUnselectedFg: WitnetPallet.darkGrey,
    copiedSnackbarBg: Colors.black,
    copiedSnackbarText: WitnetPallet.white,
    monoSmallText: TextStyle(
        fontFamily: 'RobotoMono',
        fontWeight: FontWeight.w400,
        color: WitnetPallet.darkGrey,
        fontSize: 14),
    monoRegularText: TextStyle(
        fontFamily: 'RobotoMono',
        fontWeight: FontWeight.w400,
        color: WitnetPallet.darkGrey,
        fontSize: 16),
    monoMediumText: TextStyle(
        fontFamily: 'RobotoMono',
        fontWeight: FontWeight.w700,
        color: WitnetPallet.darkGrey,
        fontSize: 16),
    monoLargeText: TextStyle(
        fontFamily: 'RobotoMono',
        fontWeight: FontWeight.w700,
        color: WitnetPallet.darkGrey,
        fontSize: 18),
  );
  // the dark theme
  static const dark = ExtendedTheme(
    selectBackgroundColor: WitnetPallet.opacityWitnetGreen,
    selectedTextColor: WitnetPallet.white,
    dropdownBackgroundColor: WitnetPallet.opacityWitnetGreen,
    dropdownTextColor: WitnetPallet.white,
    headerDashboardActiveButton: WitnetPallet.opacityWhite2,
    headerActiveTextColor: WitnetPallet.white,
    headerTextColor: WitnetPallet.white,
    headerBackgroundColor: WitnetPallet.opacityWitnetGreen,
    walletListBackgroundColor: Color.fromRGBO(14, 41, 53, 1),
    walletActiveItemBackgroundColor: WitnetPallet.opacityWitnetGreen3,
    walletActiveItemBorderColor: WitnetPallet.witnetGreen1,
    walletItemBorderColor: WitnetPallet.opacityWhite2,
    inputIconColor: WitnetPallet.opacityWhite2,
    txBorderColor: WitnetPallet.opacityWhite2,
    txValueNegativeColor: WitnetPallet.brightRed,
    txValuePositiveColor: WitnetPallet.brightGreen,
    stepBarActiveColor: WitnetPallet.witnetGreen1,
    stepBarActionableColor: WitnetPallet.white,
    stepBarColor: WitnetPallet.opacityWhite,
    switchActiveBg: WitnetPallet.witnetGreen1,
    switchActiveFg: WitnetPallet.darkBlue2,
    switchInactiveBg: WitnetPallet.darkBlue2,
    switchInactiveFg: WitnetPallet.white,
    switchBorderColor: WitnetPallet.witnetGreen1,
    errorColor: WitnetPallet.brightRed,
    activeClickableBoxBgColor: WitnetPallet.opacityWitnetGreen3,
    activeClickableBoxBorderColor: WitnetPallet.witnetGreen1,
    inactiveClickableBoxBgColor: WitnetPallet.darkBlue2,
    inactiveClickableBoxBorderColor: WitnetPallet.opacityWhite2,
    dialogBackground: WitnetPallet.opacityWitnetGreen,
    numberPaginatiorSelectedBg: WitnetPallet.witnetGreen1,
    numberPaginatiorUnselectedFg: WitnetPallet.white,
    copiedSnackbarBg: WitnetPallet.white,
    copiedSnackbarText: WitnetPallet.black,
    monoSmallText: TextStyle(
        fontFamily: 'RobotoMono',
        fontWeight: FontWeight.w400,
        color: WitnetPallet.white,
        fontSize: 14),
    monoRegularText: TextStyle(
        fontFamily: 'RobotoMono',
        fontWeight: FontWeight.w400,
        color: WitnetPallet.opacityWhite,
        fontSize: 16),
    monoMediumText: TextStyle(
        fontFamily: 'RobotoMono',
        fontWeight: FontWeight.w700,
        color: WitnetPallet.white,
        fontSize: 16),
    monoLargeText: TextStyle(
        fontFamily: 'RobotoMono',
        fontWeight: FontWeight.w700,
        color: WitnetPallet.white,
        fontSize: 18),
  );
}
