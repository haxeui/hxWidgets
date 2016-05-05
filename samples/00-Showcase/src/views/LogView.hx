package views;

import hx.widgets.Direction;
import hx.widgets.Orientation;
import hx.widgets.StaticBoxSizer;
import hx.widgets.Stretch;
import hx.widgets.TextCtrl;
import hx.widgets.Window;
import wx.widgets.styles.TextCtrlStyle;

class LogView extends View {
    private static var _text:TextCtrl;
    
    public function new(parent:Window) {
        super(parent);
        sizer = new StaticBoxSizer(Orientation.VERTICAL, this, "Log");
        
        _text = new TextCtrl(this, null, TextCtrlStyle.MULTILINE);
        sizer.add(_text, 1, Stretch.EXPAND | Direction.ALL);
    }
    
    public static function log(text:String) {
        if (_text.value.length == 0) {
            _text.appendText(text);
        } else {
            _text.appendText("\n" + text);
        }
    }
}