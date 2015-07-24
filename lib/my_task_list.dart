part of my_app;

class MyTaskList extends Component {
  final Navigator navigator;
  final List<String> tasks;

  MyTaskList({this.navigator, this.tasks});

  @override
  Widget build() {
    var children = [];
    for (String task in tasks) {
      children.add(new Center(child: new Text(task)));
    }
    return new Flex(children, direction: FlexDirection.vertical);
  }
}