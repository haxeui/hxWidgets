package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/hyperlink.h")
@:unreflective
@:native("cpp::Reference<wxHyperlinkCtrl>")
extern class HyperlinkCtrl extends HyperlinkCtrlImpl {
    @:native("new wxHyperlinkCtrl")    public static function createInstance():HyperlinkCtrl;
}

@:include("wx/hyperlink.h")
@:unreflective
@:native("wxHyperlinkCtrl")
extern class HyperlinkCtrlImpl extends Window {
    @:native("Create")                  public function create(parent:Window, id:Int, text:ConstCharStar, url:ConstCharStar, point:Point, size:Size, style:Int):Bool;
}
