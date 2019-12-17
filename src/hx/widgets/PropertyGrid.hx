package hx.widgets;

import cpp.Pointer;
import hx.widgets.EnumProperty.EnumPropertyItem;
import hx.widgets.styles.PropertyGridAttributes;
import hx.widgets.styles.PropertyGridStyles;
import wx.widgets.PropertyGrid in WxPropertyGrid;
import wx.widgets.WxString;

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
    
    public function setPropertyAttribute(id:String, attrName:String, value:Any, argFlags:Int = 0) {
        var strId = WxString.fromUTF8(id);
        var strAttrName = WxString.fromUTF8(attrName);
        propertyGridRef.ptr.setPropertyAttribute(strId, strAttrName, value, argFlags);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Util functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function appendCategory(label:String, name:String = null) {
        if (name == null) {
            name = label;
        }
        var p = new PropertyCategory(label, name);
        append(p);
    }
    
    public function appendStringProperty(label:String, value:String, name:String = null) {
        if (name == null) {
            name = label;
        }
        var p = new StringProperty(label, name, value);
        append(p);
    }
    
    public function appendIntProperty(label:String, value:Int, name:String = null) {
        if (name == null) {
            name = label;
        }
        var p = new IntProperty(label, name, value);
        append(p);
    }
    
    public function appendBoolProperty(label:String, value:Bool, name:String = null) {
        if (name == null) {
            name = label;
        }
        var p = new BoolProperty(label, name, value);
        append(p);
        setPropertyAttribute(name, PropertyGridAttributes.BOOL_USE_CHECKBOX, true);
    }
    
    public function appendEnumProperty(label:String, choices:Array<EnumPropertyItem>, value:Int = 0, name:String = null) {
        if (name == null) {
            name = label;
        }
        var p = new EnumProperty(label, name, choices, value);
        append(p);
    }
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var propertyGridRef(get, null):Pointer<WxPropertyGrid>;
    private function get_propertyGridRef():Pointer<WxPropertyGrid> {
       return _ref.reinterpret();
    }
}