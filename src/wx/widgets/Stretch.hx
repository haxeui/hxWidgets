package wx.widgets;

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
