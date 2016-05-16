package wx.widgets;

@:include("wx/hyperlink.h")
@:unreflective
@:native("wxHyperlinkCtrl")
extern class HyperlinkCtrl extends Control {

    @:native("new wxHyperlinkCtrl")     private static function _new():RawPointer<HyperlinkCtrl>;
                                        public static inline function createInstance():Pointer<HyperlinkCtrl> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  public function create(parent:RawPointer<Window>, id:Int, text:WxString, url:WxString, point:Point, size:Size, style:Int):Bool;

}
