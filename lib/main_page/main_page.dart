import 'package:flutter/widgets.dart';
import 'package:shiftemtion_app/main_page/custom_bottom_bar/custom_bottom_bar.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return CustomBottomBar();
  }
}
