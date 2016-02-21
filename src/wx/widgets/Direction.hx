package wx.widgets;

@:headerCode("#include <wx/defs.h>")
abstract Direction(Int) {
    public static var LEFT(default, null)         = new Direction(untyped __cpp__('wxDirection::wxLEFT')); 
    public static var RIGHT(default, null)        = new Direction(untyped __cpp__('wxDirection::wxRIGHT')); 
    public static var UP(default, null)           = new Direction(untyped __cpp__('wxDirection::wxUP')); 
    public static var DOWN(default, null)         = new Direction(untyped __cpp__('wxDirection::wxDOWN')); 
    public static var TOP(default, null)          = new Direction(untyped __cpp__('wxDirection::wxTOP')); 
    public static var BOTTOM(default, null)       = new Direction(untyped __cpp__('wxDirection::wxBOTTOM')); 
    public static var NORTH(default, null)        = new Direction(untyped __cpp__('wxDirection::wxNORTH')); 
    public static var SOUTH(default, null)        = new Direction(untyped __cpp__('wxDirection::wxSOUTH')); 
    public static var WEST(default, null)         = new Direction(untyped __cpp__('wxDirection::wxWEST')); 
    public static var EAST(default, null)         = new Direction(untyped __cpp__('wxDirection::wxEAST')); 
    public static var ALL(default, null)          = new Direction(untyped __cpp__('wxDirection::wxALL')); 
    
    inline public function new(i:Int) {
        this = i;
    }
}
