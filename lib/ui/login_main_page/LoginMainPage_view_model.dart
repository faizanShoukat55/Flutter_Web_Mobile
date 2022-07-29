import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_mobile_web/ui/login_main_page/tabs/tab1/login_tab1_page.dart';
import 'package:flutter_mobile_web/ui/login_main_page/tabs/tab2/login_tab2_page.dart';
import 'package:flutter_mobile_web/ui/login_main_page/tabs/tab3/login_tab3_page.dart';

import '../../core/BaseViewModel.dart';
import '../../core/enum/view_state.dart';

class LoginMainPageViewModel extends BaseViewModel {
  int currentSelection = 0;

  onSelectionChange(int val) {
    setState(ViewState.busy);
    currentSelection = val;
    setState(ViewState.idle);
  }

  Map<int, Widget> children = {
    0:
    const SizedBox(
        // width: 90,
        child: Padding(
          padding: EdgeInsets.all(1.0),
          child: Flexible(child: Text("Arbeitnehmer")),
        )),
    1:
    const SizedBox(
        // width: 90,
        child: Padding(
          padding: EdgeInsets.all(1.0),
          child: 
          Flexible(child: Text("Arbeitgeber")),
        )),
    2:
    const SizedBox(
        // width: 90,
        child: Padding(
          padding: EdgeInsets.all(1.0),
          child: 
          Flexible(child: Text("Temporarburo")),
        )),
  };


  List<Widget> pages=[
    const LoginTab1Page(),
    const LoginTab2Page(),
    const LoginTab3Page(),
  ];



   final CustomSegmentedController<int> controller=CustomSegmentedController();
  BorderRadius dynamicBorder = const BorderRadius.only(
    topLeft: Radius.circular(12),
    bottomLeft: Radius.circular(12),
  );

  onSelectionChangeBorder(int value) {
    setState(ViewState.busy);
    switch (value) {
      case 0:
        dynamicBorder = const BorderRadius.only(
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(0),
          topRight: Radius.circular(0),
        );
        break;
      case 1:
        dynamicBorder = const BorderRadius.only(
          topLeft: Radius.circular(0),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topRight: Radius.circular(0),
        );
        break;
      case 2:
        dynamicBorder = const BorderRadius.only(
          topLeft: Radius.circular(0),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(12),
          topRight: Radius.circular(12),
        );
        break;
      default:
    }
    setState(ViewState.idle);
  }

}
