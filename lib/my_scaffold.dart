part of my_app;

class MyScaffold extends StatefulComponent {

  MyScaffold();

  var _navigationState;
  final List<String> tasks = ["Hello", "World", "!!!", "one"];

  @override
  void initState() {
    _navigationState = new NavigationState([
      new Route(
          name: '/',
          builder: (navigator, route) => new MyTaskList(
              navigator: navigator,
              tasks: tasks
//              onItemCreated: _handleItemCreated,
//              onItemDeleted: _handleItemDeleted
          )
      )
    ]);
    super.initState();
  }

  @override
  Widget build() {
    return new Scaffold(
        toolbar: new MyToolbar(),
        body: new Navigator(_navigationState),
//        snackBar: buildSnackBar(),
        floatingActionButton: buildFloatingActionButton(),
        drawer: new MyDrawer()
    );
  }

  Widget buildFloatingActionButton() {
    return new FloatingActionButton(
        child: new Icon(type: 'content/add', size: 24)
    );
  }

  @override
  void syncFields(Component source) {

  }
}