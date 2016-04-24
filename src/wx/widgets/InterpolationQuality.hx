package wx.widgets;

#if (haxe_ver >= 3.3)
@:headerCode("#include <wx/graphics.h>")
@:unreflective
@:native("wxInterpolationQuality")
@:enum extern abstract InterpolationQuality(InterpolationQualityImpl) {
    @:native("wxINTERPOLATION_DEFAULT")         var DEFAULT;
    @:native("wxINTERPOLATION_NONE")            var NONE;
    @:native("wxINTERPOLATION_FAST")            var FAST;
    @:native("wxINTERPOLATION_GOOD")            var GOOD;
    @:native("wxINTERPOLATION_BEST")            var BEST;
}

@:headerCode("#include <wx/graphics.h>")
@:unreflective
@:native("wxInterpolationQuality")
extern class InterpolationQualityImpl {
}
#else
@:headerCode("#include <wx/graphics.h>")
abstract InterpolationQuality(Int) {
    public static var DEFAULT(default, null)        = new InterpolationQuality(untyped __cpp__('::wxINTERPOLATION_DEFAULT')); 
    public static var NONE(default, null)           = new InterpolationQuality(untyped __cpp__('::wxINTERPOLATION_NONE')); 
    public static var FAST(default, null)           = new InterpolationQuality(untyped __cpp__('::wxINTERPOLATION_FAST')); 
    public static var GOOD(default, null)           = new InterpolationQuality(untyped __cpp__('::wxINTERPOLATION_GOOD')); 
    public static var BEST(default, null)           = new InterpolationQuality(untyped __cpp__('::wxINTERPOLATION_BEST')); 
    
    inline public function new(i:Int) {
        this = i;
    }
}
#end

