library my_app;

import 'package:sky/widgets/basic.dart';
import 'package:sky/widgets/scaffold.dart';
import 'package:sky/widgets/tool_bar.dart';
import 'package:sky/widgets/icon_button.dart';
import 'package:sky/widgets/icon.dart';
import 'package:sky/widgets/drawer.dart';
import 'package:sky/widgets/drawer_header.dart';
import 'package:sky/widgets/drawer_item.dart';
import 'package:sky/widgets/drawer_divider.dart';
import 'package:sky/theme/colors.dart' as colors;
import 'package:sky/widgets/theme.dart';
import 'package:sky/widgets/widget.dart';
import 'package:sky/widgets/task_description.dart';
import 'package:sky/widgets/floating_action_button.dart';
import 'package:sky/widgets/navigator.dart';
import 'package:sky/widgets/material.dart';

part 'my_scaffold.dart';
part 'my_toolbar.dart';
part 'my_drawer.dart';
part 'my_task_list.dart';

class MyApp extends App {

  Widget build() {
    return new Theme(
        data: new ThemeData(
            brightness: ThemeBrightness.light,
            primarySwatch: colors.Indigo,
            accentColor: colors.RedAccent[200]
        ),
        child: new TaskDescription(
            label: 'Test App',
            child: new MyScaffold()
        )
    );
  }
}

void main() {
  runApp(new MyApp());
}