package hx.widgets;

import cpp.Pointer;
import wx.widgets.Rect in WxRect;

class Rect {

    public var x:Int;
    public var y:Int;
    public var width:Int;
    public var height:Int;

    public function new(x:Int = 0, y:Int = 0, width:Int = 0, height:Int = 0) {
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function createPointer():Pointer<WxRect> {
        return WxRect.createInstance(x, y, width, height);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static function copy(ptr:Pointer<WxRect>):Rect {
        var c:Rect = new Rect(ptr.ref.getX(), ptr.ref.getY(), ptr.ref.getWidth(), ptr.ref.getHeight());
        return c;
    }

}
