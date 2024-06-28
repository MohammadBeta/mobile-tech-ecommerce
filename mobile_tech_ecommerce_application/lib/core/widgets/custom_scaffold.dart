import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, required this.body, this.appBar});
  final Widget body;
  final AppBar? appBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(child: body),
      appBar: appBar,
    );
  }
}
