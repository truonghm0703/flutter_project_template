import 'package:flutter/widgets.dart';
import 'package:project_template/features/design_architecture/design_patter_examples_page.dart';
import 'package:project_template/features/state_management/state_management_sample_page.dart';
import 'core/routes/navigation.dart';
import 'features/ui_controls/index.dart';

Widget pushReplaceToUIControlPage(BuildContext context) {
  final UIControlPage uiControlPage = UIControlPage();
  push(context, uiControlPage);
  return uiControlPage;
}

pushToStateManagementSamplePage(BuildContext context) {
  final StateManagementSamplesPage stateManagementSamplesPage =
      StateManagementSamplesPage();
  push(context, stateManagementSamplesPage);
}

pushToDesignPatternSamplesPage(BuildContext context) {
  final DesignPatternExamplePage designPatternExamplePage =
      DesignPatternExamplePage();
  push(context, designPatternExamplePage);
}
