package wx.widgets.styles;

@:headerCode("#include <wx/defs.h>")
@:unreflective
@:native("wxShowEffect")
@:enum extern abstract ShowEffect(ShowEffectImpl) {
    @:native("wxSHOW_EFFECT_NONE")              var NONE;
    @:native("wxSHOW_EFFECT_ROLL_TO_LEFT")      var ROLL_TO_LEFT;
    @:native("wxSHOW_EFFECT_ROLL_TO_RIGHT")     var ROLL_TO_RIGHT;
    @:native("wxSHOW_EFFECT_ROLL_TO_TOP")       var ROLL_TO_TOP;
    @:native("wxSHOW_EFFECT_ROLL_TO_BOTTOM")    var ROLL_TO_BOTTOM;
    @:native("wxSHOW_EFFECT_SLIDE_TO_LEFT")     var SLIDE_TO_LEFT;
    @:native("wxSHOW_EFFECT_SLIDE_TO_RIGHT")    var SLIDE_TO_RIGHT;
    @:native("wxSHOW_EFFECT_SLIDE_TO_TOP")      var SLIDE_TO_TOP;
    @:native("wxSHOW_EFFECT_SLIDE_TO_BOTTOM")   var SLIDE_TO_BOTTOM;
    @:native("wxSHOW_EFFECT_BLEND")             var BLEND;
    @:native("wxSHOW_EFFECT_EXPAND")            var EXPAND;
    @:native("wxSHOW_EFFECT_MAX")               var MAX;
}

@:headerCode("#include <wx/defs.h>")
@:unreflective
@:native("cpp::Struct<wxShowEffect, cpp::EnumHandler>")
extern class ShowEffectImpl {
}
