part of my_app;

class MyDrawer extends Component {

  @override
  Widget build() {
    return new Drawer(
        level: 3,
        children: [
          new DrawerHeader(children: [new Text('Test App')]),
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
}