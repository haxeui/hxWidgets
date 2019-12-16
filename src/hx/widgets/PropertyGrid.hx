package hx.widgets;

import cpp.Pointer;
import hx.widgets.styles.PropertyGridStyles;
import wx.widgets.PropertyGrid in WxPropertyGrid;

class PropertyGrid extends Control {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (style == 0) {
            style = PropertyGridStyles.DEFAULT_STYLE | PropertyGridStyles.SPLITTER_AUTO_CENTER;
        }
        if (_ref == null) {
            _ref = WxPropertyGrid.createInstance().reinterpret();
            propertyGridRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }
    
    @:access(hx.widgets.PGProperty)
    public function append(property:PGProperty) {
        var p = property.propertyRef;
        propertyGridRef.ptr.append(p.raw);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var propertyGridRef(get, null):Pointer<WxPropertyGrid>;
    private function get_propertyGridRef():Pointer<WxPropertyGrid> {
       return _ref.reinterpret();
    }
}