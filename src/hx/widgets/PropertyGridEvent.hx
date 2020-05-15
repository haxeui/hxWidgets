package hx.widgets;

import cpp.Pointer;
import wx.widgets.PropertyGridEvent in WxPropertyGridEvent;
import wx.widgets.Event in WxEvent;

class PropertyGridEvent extends Event {
    public var property(get, null):PGProperty;
    @:access(hx.widgets.Object)
    private function get_property():PGProperty {
        var p = new PGProperty();
        
        var pProp = propertyGridEventRef.ptr.getProperty();
        p._ref = Pointer.fromRaw(pProp).reinterpret();
        
        return p;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var propertyGridEventRef(get, null):Pointer<WxPropertyGridEvent>;
    private function get_propertyGridEventRef():Pointer<WxPropertyGridEvent> {
        return _ref.reinterpret();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // STATIC HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static function fromPointer(ptr:Pointer<WxEvent>):Event {
        var event:PropertyGridEvent = new PropertyGridEvent();
        event._ref = ptr;
        return event;
    }
}