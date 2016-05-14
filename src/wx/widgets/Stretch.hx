package wx.widgets;

#if (haxe_ver >= 3.3)
@:include("wx/defs.h")
@:unreflective
@:enum extern abstract Stretch(StretchImpl) {

    @:native("wxSTRETCH_NOT")       var STRETCH_NOT;
    @:native("wxSHRINK")            var SHRINK;
    @:native("wxGROW")              var GROW;
    @:native("wxEXPAND")            var EXPAND;
    @:native("wxSHAPED")            var SHAPED;
    @:native("wxTILE")              var TILE;
    @:native("wxSTRETCH_MASK")      var STRETCH_MASK;

    @:op(A | B) static inline function or(a:Stretch, b:SizerFlag):SizerFlag {
        return SizerFlag.orFlags(cast a, b);
    }

}

@:include("wx/defs.h")
@:unreflective
@:native("wxStretch")
extern class StretchImpl {
}
#else
@:headerCode("#include <wx/defs.h>")
abstract Stretch(Int) from Int to Int {

    public static var STRETCH_NOT(default, null)      = new Stretch(untyped __cpp__("::wxSTRETCH_NOT"));
    public static var SHRINK(default, null)           = new Stretch(untyped __cpp__("::wxSHRINK"));
    public static var GROW(default, null)             = new Stretch(untyped __cpp__("::wxGROW"));
    public static var EXPAND(default, null)           = new Stretch(untyped __cpp__("::wxEXPAND"));
    public static var SHAPED(default, null)           = new Stretch(untyped __cpp__("::wxSHAPED"));
    public static var TILE(default, null)             = new Stretch(untyped __cpp__("::wxTILE"));
    public static var STRETCH_MASK(default, null)     = new Stretch(untyped __cpp__("::wxSTRETCH_MASK"));

    inline public function new(i:Int) {
        this = i;
    }

}
#end
