import 'package:flutter/material.dart';
import 'package:flutter_app/responsive.dart';

class ResponsiveProject extends Responsive {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const ResponsiveProject({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key, mobile: mobile, tablet: tablet, desktop: desktop);

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop help us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 1050;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1300 &&
      MediaQuery.of(context).size.width >= 1050;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1300;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (_size.width >= 1300) {
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (_size.width >= 1050 && tablet != null) {
      return tablet!;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
