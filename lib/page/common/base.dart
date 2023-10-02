import 'package:flutter/material.dart';

import '../../share/share.dart';
import '../../widget/common/footer.dart';
import '../../widget/common/header.dart';

class BasePage extends StatelessWidget {
  final String? headerTitle;
  final PreferredSizeWidget? appBar;
  final String? backgroundImagePath;
  final Widget? body;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;

  const BasePage({
    super.key,
    this.headerTitle,
    this.appBar,
    this.backgroundImagePath,
    this.body,
    this.floatingActionButton,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorType.base.background,
      appBar: appBar ?? HeaderView(title: headerTitle),
      body: backgroundImagePath == null
          ? body
          : Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(backgroundImagePath!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                if (body != null) body!,
              ],
            ),
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar ?? const FooterView(),
    );
  }
}
