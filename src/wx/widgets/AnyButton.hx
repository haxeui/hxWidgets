package wx.widgets;

@:include("wx/anybutton.h")
@:unreflective
@:native("wxAnyButton")
@:structAccess
extern class AnyButton extends Control {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetBitmap")               public function getBitmap():Bitmap;
    @:native("SetBitmap")               public function setBitmap(bitmap:Bitmap):Void;
    @:native("SetBitmapPosition")       public function setBitmapPosition(dir:Direction):Void;
}
