package hx.widgets;

import cpp.NativeArray;
import cpp.Pointer;
import wx.widgets.Choice in WxChoice;
import wx.widgets.WxString;

class Choice extends Control implements ItemContainer {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxChoice.createInstance().reinterpret();
            choiceRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, 0, NativeArray.address([], 0).rawCast(), style);
        }
        
        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ItemContainer
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function append(string:String):Int {
        var s = WxString.createInstance(string);
        var n:Int = choiceRef.ptr.append(s.ref);
        s.destroy();
        return n;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ItemContainerImmutable
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function setString(n:Int, string:String):Void {
        var s = WxString.createInstance(string);
        choiceRef.ptr.setString(n, s.ref);
        s.destroy();
    }
    
    public function getString(n:Int):String {
        var r:WxString = choiceRef.ptr.getString(n);
        return new String(r.c_str());
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var choiceRef(get, null):Pointer<WxChoice>;
    private function get_choiceRef():Pointer<WxChoice> {
       return _ref.reinterpret();
    }
}