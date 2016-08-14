package views;

import hx.widgets.*;
import hx.widgets.styles.*;

class HTMLView extends View {
    private var url:TextCtrl;

    public function new(parent:Window) {
        super(parent);

        sizer = new BoxSizer(Orientation.VERTICAL);
        var top = new BoxSizer(Orientation.VERTICAL);

        var hsizer:BoxSizer = new BoxSizer(Orientation.HORIZONTAL);
        url = new TextCtrl(this, "https://github.com/haxeui/hxWidgets");
        hsizer.add(url, 1, Stretch.EXPAND | Direction.EAST, 5);

        var button:Button = new Button(this, "Go");
        hsizer.add(button, 0, Stretch.STRETCH_NOT, 5);
        top.addSizer(hsizer, 0, Stretch.EXPAND | Direction.ALL);


        var webview:WebView = new WebView(this, url.value);
        button.bind(EventType.BUTTON, function(e) {
            webview.loadURL(url.value);
        });
        top.add(webview, 1, Stretch.EXPAND | Direction.NORTH, 5);


        sizer.addSizer(top, 1, Stretch.EXPAND | Direction.ALL, 5);
    }
}