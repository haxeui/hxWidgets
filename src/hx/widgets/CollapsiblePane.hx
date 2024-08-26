package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.CollapsiblePane in WxCollapsiblePane;
import wx.widgets.Window in WxWindow;
import wx.widgets.WxString;

class CollapsiblePane extends Control {
    public function new(parent:Window, label:String = null, style:Int = 0, id:Int = -1) {
        if (label == null) {
            label = "";
        }

        var str = WxString.fromUTF8(label);
    
        if (_ref == null) {
            _ref = WxCollapsiblePane.createInstance().reinterpret();
            collapsiblePaneRef.ptr.create(Window.toRaw(parent), id, str);
        }

        super(parent, id);
    }

    public function getPane():Window {
        var p:RawPointer<WxWindow> = collapsiblePaneRef.ptr.getPane();
        var win:Window = new Window();
        win._ref = Pointer.fromRaw(p).reinterpret();
        return Window.autoConvert(win); // lets auto convert the class so it can be used with casts
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var collapsiblePaneRef(get, null):Pointer<WxCollapsiblePane>;
    private function get_collapsiblePaneRef():Pointer<WxCollapsiblePane> {
       return _ref.reinterpret();
    }
}