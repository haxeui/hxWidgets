package hx.widgets;

import cpp.Pointer;
import wx.widgets.Font in WxFont;

@:unreflective
class Font extends GDIObject {

    private var _size:Int;
    private var _family:FontFamily;
    private var _style:FontStyle;
    private var _weight:FontWeight;
    private var _underlined:Bool;

    public function new(size:Int = -1, family:FontFamily = null, style:FontStyle = null, weight:FontWeight = null, underlined = false) {
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
        _underlined = underlined;
    }

    public var size(get, set):Int;
    private function get_size():Int {
        return _size;
    }
    private function set_size(value:Int):Int {
        _size = value;
        return value;
    }

    public var family(get, set):FontFamily;
    private function get_family():FontFamily {
        return _family;
    }
    private function set_family(value:FontFamily):FontFamily {
        _family = value;
        return value;
    }

    public var style(get, set):FontStyle;
    private function get_style():FontStyle {
        return _style;
    }
    private function set_style(value:FontStyle):FontStyle {
        _style = value;
        return value;
    }

    public var weight(get, set):FontWeight;
    private function get_weight():FontWeight {
        return _weight;
    }
    private function set_weight(value:FontWeight):FontWeight {
        _weight = value;
        return value;
    }

    public var underlined(get, set):Bool;
    private function get_underlined():Bool {
        return _underlined;
    }
    private function set_underlined(value:Bool):Bool {
        _underlined = value;
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function createPointer():Pointer<WxFont> {
        return WxFont.createInstance(this._size, this._family, this._style, this._weight, this._underlined);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static function copy(other:WxFont):Font {
        return new Font(other.getPointSize(), other.getFamily(), other.getStyle(), other.getWeight(), other.getUnderlined());
    }

}
