package hx.widgets;

import cpp.Pointer;
import wx.widgets.Panel in WxPanel;

class Panel extends Window {

    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxPanel.createInstance().reinterpret();
            panelRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var panelRef(get, null):Pointer<WxPanel>;
    private function get_panelRef():Pointer<WxPanel> {
        return _ref.reinterpret();
    }

}
