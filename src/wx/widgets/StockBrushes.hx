package wx.widgets;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/brush.h")
@:unreflective
class StockBrushes {
    public static var BRUSH_BLACK(default, null):Pointer<Brush>              = Pointer.fromRaw(untyped __cpp__('wxBLACK_BRUSH')); 
    public static var BRUSH_BLUE(default, null):Pointer<Brush>               = Pointer.fromRaw(untyped __cpp__('wxBLUE_BRUSH')); 
    public static var BRUSH_CYAN(default, null):Pointer<Brush>               = Pointer.fromRaw(untyped __cpp__('wxCYAN_BRUSH')); 
    public static var BRUSH_GREEN(default, null):Pointer<Brush>              = Pointer.fromRaw(untyped __cpp__('wxGREEN_BRUSH')); 
    public static var BRUSH_YELLOW(default, null):Pointer<Brush>             = Pointer.fromRaw(untyped __cpp__('wxYELLOW_BRUSH')); 
    public static var BRUSH_GREY(default, null):Pointer<Brush>               = Pointer.fromRaw(untyped __cpp__('wxGREY_BRUSH')); 
    public static var BRUSH_LIGHT_GREY(default, null):Pointer<Brush>         = Pointer.fromRaw(untyped __cpp__('wxLIGHT_GREY_BRUSH')); 
    public static var BRUSH_MEDIUM_GREY(default, null):Pointer<Brush>        = Pointer.fromRaw(untyped __cpp__('wxMEDIUM_GREY_BRUSH')); 
    public static var BRUSH_RED(default, null):Pointer<Brush>                = Pointer.fromRaw(untyped __cpp__('wxRED_BRUSH')); 
    public static var BRUSH_TRANSPARENT(default, null):Pointer<Brush>        = Pointer.fromRaw(untyped __cpp__('wxTRANSPARENT_BRUSH')); 
    public static var BRUSH_WHITE(default, null):Pointer<Brush>              = Pointer.fromRaw(untyped __cpp__('wxWHITE_BRUSH')); 
}