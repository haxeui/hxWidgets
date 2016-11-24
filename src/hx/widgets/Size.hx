package hx.widgets;

import cpp.Pointer;
import wx.widgets.Size in WxSize;

class Size {

    public var width:Int;
    public var height:Int;

    public function new(width:Int = 0, height:Int = 0) {
        this.width = width;
        this.height = height;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function createPointer():Pointer<WxSize> {
        return WxSize.createInstance(width, height);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:isVar public static var defaultSize(get, null):Pointer<WxSize>;
    private static function get_defaultSize():Pointer<WxSize> {
        if (defaultSize == null) {
            defaultSize = WxSize.createInstance(-1, -1);
        }
        return defaultSize;
    }

    public static function copy(other:WxSize):Size {
        return new Size(other.getWidth(), other.getHeight());
    }

}
