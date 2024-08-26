package hx.widgets;

import cpp.Pointer;
import hx.widgets.EnumProperty.EnumPropertyItem;
import hx.widgets.styles.PropertyGridAttributes;
import hx.widgets.styles.PropertyGridStyles;
import wx.widgets.PropertyGrid in WxPropertyGrid;
import wx.widgets.WxString;

@:access(hx.widgets.PGProperty)
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
    
    public function showScrollbars(horz:ScrollbarVisibility, vert:ScrollbarVisibility) {
        propertyGridRef.ptr.showScrollbars(horz, vert);
    }

    public function clearSelection() {
        propertyGridRef.ptr.clearSelection(false);
    }

    public function setPropertyReadOnly(property:PGProperty) {
        var p = property.propertyRef;
        propertyGridRef.ptr.setPropertyReadOnly(p.raw);
    }


    public function enableProperty(property:PGProperty, enable:Bool = true) {
        var p = property.propertyRef;
        propertyGridRef.ptr.enableProperty(p.raw, enable);
    }

    public function append(property:PGProperty):PGProperty {
        var p = property.propertyRef;
        var r = propertyGridRef.ptr.append(p.raw);
        var prop = new PGProperty();
        prop._ref = Pointer.fromRaw(r).reinterpret();
        return prop;
    }

    public function appendIn(parent:PGProperty, property:PGProperty):PGProperty {
        var parentRef = parent.propertyRef;
        var p = property.propertyRef;
        var r = propertyGridRef.ptr.appendIn(parentRef.raw, p.raw);
        var prop = new PGProperty();
        prop._ref = Pointer.fromRaw(r).reinterpret();
        return prop;
    }

    @:access(hx.widgets.Object)
    public function getProperty(name:String):PGProperty {
        var p = new PGProperty();
        
        var strName = WxString.fromUTF8(name);
        var pProp = propertyGridRef.ptr.getProperty(strName);
        p._ref = Pointer.fromRaw(pProp).reinterpret();
        
        return p;
    }
    
    public function setPropertyAttribute(id:String, attrName:String, value:Any, argFlags:Int = 0) {
        var strId = WxString.fromUTF8(id);
        var strAttrName = WxString.fromUTF8(attrName);
        propertyGridRef.ptr.setPropertyAttribute(strId, strAttrName, value, argFlags);
    }
    
    public function setPropertyBackgroundColour(property:PGProperty, color:Int) {
        var p = property.propertyRef;
        var c = new Colour(color);
        propertyGridRef.ptr.setPropertyBackgroundColour(p.raw, c.createPointer().ref, PGPropertyValuesFlags.DontRecurse);
        c.destroy();
    }

    public function setMarginColour(color:Int) {
        var c = new Colour(color);
        propertyGridRef.ptr.setMarginColour(c.createPointer().ref);
        c.destroy();
    }

    public function setLineColour(color:Int) {
        var c = new Colour(color);
        propertyGridRef.ptr.setLineColour(c.createPointer().ref);
        c.destroy();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Util functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function appendCategory(label:String, name:String = null):PGProperty {
        if (name == null) {
            name = label;
        }
        var p = new PropertyCategory(label, name);
        return append(p);
    }
    
    public function appendStringProperty(label:String, value:String, name:String = null):PGProperty {
        if (name == null) {
            name = label;
        }
        var p = new StringProperty(label, name, value);
        return append(p);
    }
    
    public function appendColourProperty(label:String, value:Int, name:String = null):PGProperty {
        if (name == null) {
            name = label;
        }
        var p = new ColourProperty(label, name, value);
        return append(p);
    }
    
    public function appendIntProperty(label:String, value:Int, name:String = null):PGProperty {
        if (name == null) {
            name = label;
        }
        var p = new IntProperty(label, name, value);
        return append(p);
    }
    
    public function appendBoolProperty(label:String, value:Bool, name:String = null):PGProperty {
        if (name == null) {
            name = label;
        }
        var p = new BoolProperty(label, name, value);
        var r = append(p);
        setPropertyAttribute(name, PropertyGridAttributes.BOOL_USE_CHECKBOX, true);
        return r;
    }
    
    public function appendEnumProperty(label:String, choices:Array<EnumPropertyItem>, value:Int = 0, name:String = null):PGProperty {
        if (name == null) {
            name = label;
        }
        var p = new EnumProperty(label, name, choices, value);
        return append(p);
    }

    // appendIn variants
    public function appendCategoryIn(parent:PGProperty, label:String, name:String = null) {
        if (name == null) {
            name = label;
        }
        var p = new PropertyCategory(label, name);
        return appendIn(parent, p);
    }

    public function appendStringPropertyIn(parent:PGProperty, label:String, value:String, name:String = null):PGProperty {
        if (name == null) {
            name = label;
        }
        var p = new StringProperty(label, name, value);
        return appendIn(parent, p);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var propertyGridRef(get, null):Pointer<WxPropertyGrid>;
    private function get_propertyGridRef():Pointer<WxPropertyGrid> {
       return _ref.reinterpret();
    }
}