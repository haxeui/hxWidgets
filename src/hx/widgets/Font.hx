package hx.widgets;

import wx.widgets.Font in WxFont;

class Font {
    //private var _ref:WxFont;
    private var _size:Int;
    private var _family:FontFamily;
    private var _style:FontStyle;
    private var _weight:FontWeight;
    private var _underline:Bool;
    
    public function new(size:Int = -1, family:FontFamily = null, style:FontStyle = null, weight:FontWeight = null, underline = false) {
        if (family == null) {
            family = FontFamily.DEFAULT;
        }
        if (style == null) {
            style = FontStyle.NORMAL;
        }
        if (weight == null) {
            weight = FontWeight.NORMAL;
        }
        _size = size;
        _family = family;
        _style = style;
        _weight = weight;
        _underline = underline;
    }
}