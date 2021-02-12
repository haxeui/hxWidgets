package hx.widgets;

import cpp.Pointer;
import wx.widgets.DataViewListCtrl in WxDataViewListCtrl;
import wx.widgets.Variant;
import wx.widgets.Vector.VariantVector;
import wx.widgets.WxString;

class DataViewListCtrl extends DataViewCtrl {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxDataViewListCtrl.createInstance().reinterpret();
            dataViewListCtrlRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }
        
        super(parent, id);
    }
    
    public function appendToggleColumn(label:String) {
        var s = WxString.fromUTF8(label);
        dataViewListCtrlRef.ptr.appendToggleColumn(s);
    }
    
    public function appendTextColumn(label:String) {
        var s = WxString.fromUTF8(label);
        dataViewListCtrlRef.ptr.appendTextColumn(s);
    }
    
    public function appendProgressColumn(label:String) {
        var s = WxString.fromUTF8(label);
        dataViewListCtrlRef.ptr.appendProgressColumn(s);
    }
    
    public function appendItem(values:Array<Any>) {
        var data = VariantVector.create();
        for (v in values) {
            switch (Type.typeof(v)) { // some hxcpp weirdness going on here with Any
                case TInt:
                    var i:Int = v;
                    data.pushBack(Variant.create(i));
                case TBool:
                    var b:Bool = v;
                    data.pushBack(Variant.create(b));
                case TClass(String):
                    var s:String = Std.string(v);
                    data.pushBack(Variant.create(WxString.fromUTF8(s)));
                case TFloat:
                    var f:Float = v;
                    data.pushBack(Variant.create(f));
                case _:    
            }
        }
        dataViewListCtrlRef.ptr.appendItem(data);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dataViewListCtrlRef(get, null):Pointer<WxDataViewListCtrl>;
    private function get_dataViewListCtrlRef():Pointer<WxDataViewListCtrl> {
       return _ref.reinterpret();
    }
}