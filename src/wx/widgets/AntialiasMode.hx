package wx.widgets;

@:include("wx/graphics.h")
extern enum abstract AntialiasMode(AntialiasModeImpl)  {

    @:native("wxANTIALIAS_NONE")        var NONE;
    @:native("wxANTIALIAS_DEFAULT")     var DEFAULT;

}

@:include("wx/graphics.h")
@:native("cpp::Struct<wxAntialiasMode, cpp::EnumHandler>")
extern class AntialiasModeImpl {
}
