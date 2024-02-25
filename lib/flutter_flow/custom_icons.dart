import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _customTattooIconsFamily = 'CustomTattooIcons';
  static const String _tattooIconsFamily = 'TattooIcons';
  static const String _tattooLogoFamily = 'TattooLogo';

  // CustomTattooIcons
  static const IconData klaserBlast =
      IconData(0xea1e, fontFamily: _customTattooIconsFamily);
  static const IconData ktargetLaser =
      IconData(0xeac4, fontFamily: _customTattooIconsFamily);
  static const IconData kbriefcaseMedical =
      IconData(0xf469, fontFamily: _customTattooIconsFamily);
  static const IconData ksyringe =
      IconData(0xf48e, fontFamily: _customTattooIconsFamily);

  // TattooIcons
  static const IconData klaser =
      IconData(0xe800, fontFamily: _tattooIconsFamily);
  static const IconData kneedle =
      IconData(0xe801, fontFamily: _tattooIconsFamily);
  static const IconData ktattooicon =
      IconData(0xe802, fontFamily: _tattooIconsFamily);

  // TattooLogo
  static const IconData ktriskelion =
      IconData(0xe800, fontFamily: _tattooLogoFamily);
}
