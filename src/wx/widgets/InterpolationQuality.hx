package wx.widgets;

@:include("wx/graphics.h")
extern enum abstract InterpolationQuality(InterpolationQualityImpl) {

    @:native("wxINTERPOLATION_DEFAULT")         var DEFAULT;
    @:native("wxINTERPOLATION_NONE")            var NONE;
    @:native("wxINTERPOLATION_FAST")            var FAST;
    @:native("wxINTERPOLATION_GOOD")            var GOOD;
    @:native("wxINTERPOLATION_BEST")            var BEST;

}

@:include("wx/graphics.h")
@:native("cpp::Struct<wxInterpolationQuality, cpp::EnumHandler>")
extern class InterpolationQualityImpl {
}
