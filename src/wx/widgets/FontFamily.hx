package wx.widgets;

@:headerCode("#include <wx/font.h>")
abstract FontFamily(Int) {
    public static var DEFAULT(default, null)            = new FontFamily(untyped __cpp__('::wxFONTFAMILY_DEFAULT')); 
    public static var DECORATIVE(default, null)         = new FontFamily(untyped __cpp__('::wxFONTFAMILY_DECORATIVE')); 
    public static var ROMAN(default, null)              = new FontFamily(untyped __cpp__('::wxFONTFAMILY_ROMAN')); 
    public static var SCRIPT(default, null)             = new FontFamily(untyped __cpp__('::wxFONTFAMILY_SCRIPT')); 
    public static var SWISS(default, null)              = new FontFamily(untyped __cpp__('::wxFONTFAMILY_SWISS')); 
    public static var MODERN(default, null)             = new FontFamily(untyped __cpp__('::wxFONTFAMILY_MODERN')); 
    public static var TELETYPE(default, null)           = new FontFamily(untyped __cpp__('::wxFONTFAMILY_TELETYPE')); 
    
    inline public function new(i:Int) {
        this = i;
    }
}