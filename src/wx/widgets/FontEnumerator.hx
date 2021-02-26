package wx.widgets;

@:include("wx/fontenum.h")
@:unreflective
@:native("wxFontEnumerator")
@:structAccess
extern class FontEnumerator {
    @:native("wxFontEnumerator::GetFacenames")      public static function getFacenames():ArrayString;
}