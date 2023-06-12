package wx.widgets.styles;

@:headerCode("#include <wx/defs.h>")
@:unreflective
@:native("wxBrushStyle")
extern enum abstract BrushStyle(BrushStyleImpl) {
    @:native("wxBRUSHSTYLE_INVALID")                var INVALID;
    @:native("wxBRUSHSTYLE_SOLID")                  var SOLID;
    @:native("wxBRUSHSTYLE_TRANSPARENT")            var TRANSPARENT;
    @:native("wxBRUSHSTYLE_STIPPLE_MASK_OPAQUE")    var STIPPLE_MASK_OPAQUE;
    @:native("wxBRUSHSTYLE_STIPPLE_MASK")           var STIPPLE_MASK;
    @:native("wxBRUSHSTYLE_STIPPLE")                var STIPPLE;
    @:native("wxBRUSHSTYLE_BDIAGONAL_HATCH")        var BDIAGONAL_HATCH;
    @:native("wxBRUSHSTYLE_CROSSDIAG_HATCH")        var CROSSDIAG_HATCH;
    @:native("wxBRUSHSTYLE_FDIAGONAL_HATCH")        var FDIAGONAL_HATCH;
    @:native("wxBRUSHSTYLE_CROSS_HATCH")            var CROSS_HATCH;
    @:native("wxBRUSHSTYLE_HORIZONTAL_HATCH")       var HORIZONTAL_HATCH;
    @:native("wxBRUSHSTYLE_VERTICAL_HATCH")         var VERTICAL_HATCH;
    @:native("wxBRUSHSTYLE_FIRST_HATCH")            var FIRST_HATCH;
    @:native("wxBRUSHSTYLE_LAST_HATCH")             var LAST_HATCH;
}

@:headerCode("#include <wx/defs.h>")
@:unreflective
@:native("cpp::Struct<wxBrushStyle, cpp::EnumHandler>")
extern class BrushStyleImpl {
}
