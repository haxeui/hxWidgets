package hx.widgets;

import cpp.Pointer;
import wx.widgets.Button in WxButton;
import wx.widgets.WxString;

class Button extends AnyButton {

    public function new(parent:Window, label:String = null, style:Int = 0, id:Int = -1) {
        _hasBitmap = false;
        bitmapPosition = Direction.LEFT;

        if (_ref == null) {
            _ref = WxButton.createInstance().reinterpret();
            if (label != null) {
                var str = WxString.fromUTF8(label);
                buttonRef.ptr.create(Window.toRaw(parent), id, str, Point.defaultPosition.ref, Size.defaultSize.ref, style);
            } else {
                buttonRef.ptr.create(Window.toRaw(parent), id);
            }
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var buttonRef(get, null):Pointer<WxButton>;
    private function get_buttonRef():Pointer<WxButton> {
       return _ref.reinterpret();
    }
}
