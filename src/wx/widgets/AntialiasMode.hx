package wx.widgets;

@:include("wx/graphics.h")
@:enum extern abstract AntialiasMode(AntialiasModeImpl)  {

    @:native("wxANTIALIAS_NONE")        var NONE;
    @:native("wxANTIALIAS_DEFAULT")     var DEFAULT;

}

@:include("wx/graphics.h")
@:unreflective
@:native("wxAntialiasMode")
extern class AntialiasModeImpl {
}
