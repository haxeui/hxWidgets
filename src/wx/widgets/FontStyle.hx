package wx.widgets;

@:headerCode("#include <wx/font.h>")
abstract FontStyle(Int) {
    public static var NORMAL(default, null)             = new FontStyle(untyped __cpp__('::wxFONTSTYLE_NORMAL')); 
    public static var ITALIC(default, null)             = new FontStyle(untyped __cpp__('::wxFONTSTYLE_ITALIC')); 
    public static var SLANT(default, null)              = new FontStyle(untyped __cpp__('::wxFONTSTYLE_SLANT')); 
    
    inline public function new(i:Int) {
        this = i;
    }
}