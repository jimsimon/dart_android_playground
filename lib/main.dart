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

class HelloWorldApp extends App {
  Widget build() {
    return new Theme(
        data: new ThemeData(
            brightness: ThemeBrightness.light,
            primarySwatch: colors.Indigo,
            accentColor: colors.PinkAccent[200]
        ),
        child: new TaskDescription(
            label: 'Test App',
            child: buildScaffold()
        )
    );
  }

  Widget buildScaffold() {
    return new Scaffold(
        toolbar: buildToolBar(),
        body: buildBody(),
//        snackBar: buildSnackBar(),
        floatingActionButton: buildFloatingActionButton(),
        drawer: buildDrawer()
    );
  }

  Widget buildFloatingActionButton() {
    return new FloatingActionButton(
        child: new Icon(type: 'content/add', size: 24)
    );
  }

  Widget buildToolBar() {
    return new ToolBar(
        left: new IconButton(icon: "navigation/menu"),
        center: new Text("This is a title")
    );
  }

  Widget buildDrawer() {
    return new Drawer(
        level: 3,
        children: [
          new DrawerHeader(children: [new Text('Fitness')]),
          new DrawerItem(
              icon: 'action/assessment',
              children: [new Text('Measure')]),
          new DrawerItem(
              icon: 'maps/directions_run',
              children: [new Text('Run')]),
          new DrawerDivider(),
          new DrawerItem(
              icon: 'action/settings',
              children: [new Text('Settings')]),
          new DrawerItem(
              icon: 'action/help',
              children: [new Text('Help & Feedback')])
        ]
    );
  }

  Widget buildBody() {
    return new Center(child: new Text("Hello World!!!"));
  }
}

void main() {
  runApp(new HelloWorldApp());
}