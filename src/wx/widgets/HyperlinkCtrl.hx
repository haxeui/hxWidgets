package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/hyperlink.h")
@:unreflective
@:native("wxHyperlinkCtrl")
extern class HyperlinkCtrl extends Control {

    @:native("new wxHyperlinkCtrl")     private static function _new():RawPointer<HyperlinkCtrl>;
                                        public static inline function createInstance():Pointer<HyperlinkCtrl> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  @:overload(function (parent:RawPointer<Window>, id:Int, text:WxString, url:WxString, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;
}
