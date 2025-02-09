enum IBMPlexSansArabicFont {
  Bold,
  Regular,
  Medium,
  Light,
  SemiBold,
}

extension IBMPlexSansArabicFontExtension on IBMPlexSansArabicFont {
  String get fontName {
    switch (this) {
      case IBMPlexSansArabicFont.Bold:
        return "IBMPlexSansArabic-Bold";
      case IBMPlexSansArabicFont.Regular:
        return "IBMPlexSansArabic-Regular";
      case IBMPlexSansArabicFont.Medium:
        return "IBMPlexSansArabic-Medium";
      case IBMPlexSansArabicFont.Light:
        return "IBMPlexSansArabic-Light";
      case IBMPlexSansArabicFont.SemiBold:
        return "IBMPlexSansArabic-SemiBold";
    }
  }
}
