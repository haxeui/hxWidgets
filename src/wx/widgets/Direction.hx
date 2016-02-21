package wx.widgets;

@:headerCode("#include <wx/defs.h>")
abstract Direction(Int) {
    public static var LEFT(default, null)         = new Direction(untyped __cpp__('::wxLEFT')); 
    public static var RIGHT(default, null)        = new Direction(untyped __cpp__('::wxRIGHT')); 
    public static var UP(default, null)           = new Direction(untyped __cpp__('::wxUP')); 
    public static var DOWN(default, null)         = new Direction(untyped __cpp__('::wxDOWN')); 
    public static var TOP(default, null)          = new Direction(untyped __cpp__('::wxTOP')); 
    public static var BOTTOM(default, null)       = new Direction(untyped __cpp__('::wxBOTTOM')); 
    public static var NORTH(default, null)        = new Direction(untyped __cpp__('::wxNORTH')); 
    public static var SOUTH(default, null)        = new Direction(untyped __cpp__('::wxSOUTH')); 
    public static var WEST(default, null)         = new Direction(untyped __cpp__('::wxWEST')); 
    public static var EAST(default, null)         = new Direction(untyped __cpp__('::wxEAST')); 
    public static var ALL(default, null)          = new Direction(untyped __cpp__('::wxALL')); 
    
    inline public function new(i:Int) {
        this = i;
    }
}
