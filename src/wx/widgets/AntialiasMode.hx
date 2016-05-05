package wx.widgets;

#if (haxe_ver >= 3.3)
@:include("wx/graphics.h")
@:enum extern abstract AntialiasMode(AntialiasModeImpl)  {
    @:native("wxANTIALIAS_NONE")        var NONE;
    @:native("wxANTIALIAS_DEFAULT")     var DEFAULT;
}

@:include("wx/graphics.h")
@:native("cpp::Struct<wxAntialiasMode, cpp::EnumHandler>")
extern class AntialiasModeImpl {
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
