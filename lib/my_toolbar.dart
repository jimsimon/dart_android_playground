part of my_app;

class MyToolbar extends Component {

  @override
  Widget build() {
    return new ToolBar(
        left: new IconButton(icon: "navigation/menu"),
        center: new Text("This is a title")
    );
  }
}