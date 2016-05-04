package wx.widgets;

#if (haxe_ver >= 3.3)
@:headerCode("#include <wx/graphics.h>")
@:unreflective
@:enum extern abstract AntialiasMode(Int) to Int from Int {
    @:native("wxANTIALIAS_NONE")        var NONE;
    @:native("wxANTIALIAS_DEFAULT")     var DEFAULT;
}
#else
@:headerCode("#include <wx/graphics.h>")
abstract AntialiasMode(Int) {
    public static var NONE(default, null)           = new AntialiasMode(untyped __cpp__('::wxANTIALIAS_NONE'));
    public static var DEFAULT(default, null)        = new AntialiasMode(untyped __cpp__('::wxANTIALIAS_DEFAULT'));

    inline public function new(i:Int) {
        this = i;
    }
}
#end
