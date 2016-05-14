package views;

import hx.widgets.*;
import hx.widgets.styles.*;

class LogView extends View {

    private static var _text:TextCtrl;

    public function new(parent:Window) {
        super(parent);

        sizer = new BoxSizer(Orientation.VERTICAL);
        _text = new TextCtrl(this, null, TextCtrlStyle.MULTILINE);
        sizer.add(_text, 1, Stretch.EXPAND | Direction.ALL);
    }

    public static function log(text:String) {
        if (_text.value.length == 0) {
            _text.appendText(text);
        }
        else {
            _text.appendText("\n" + text);
        }
    }

}
