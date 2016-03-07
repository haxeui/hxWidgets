package wx.widgets;

@:headerCode("#include <wx/font.h>")
abstract FontWeight(Int) {
    public static var NORMAL(default, null)             = new FontWeight(untyped __cpp__('::wxFONTWEIGHT_NORMAL')); 
    public static var LIGHT(default, null)              = new FontWeight(untyped __cpp__('::wxFONTWEIGHT_LIGHT')); 
    public static var BOLD(default, null)               = new FontWeight(untyped __cpp__('::wxFONTWEIGHT_BOLD')); 
    
    inline public function new(i:Int) {
        this = i;
    }
}