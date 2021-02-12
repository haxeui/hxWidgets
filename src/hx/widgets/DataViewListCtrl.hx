package hx.widgets;

import cpp.Pointer;
import hx.widgets.Bitmap;
import wx.widgets.DataViewListCtrl in WxDataViewListCtrl;
import wx.widgets.Variant;
import wx.widgets.Vector.VariantVector;
import wx.widgets.WxString;

@:access(hx.widgets.DataViewColumn)
@:access(hx.widgets.Object)
class DataViewListCtrl extends DataViewCtrl {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxDataViewListCtrl.createInstance().reinterpret();
            dataViewListCtrlRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }
        
        super(parent, id);
    }
    
    public function appendColumn(column:DataViewColumn) {
        var p = column.dataViewColumnRef.get_raw();
        dataViewListCtrlRef.ptr.appendColumn(p);
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

    public function appendBitmapColumn(label:String, modelColumn:Int) {
        var s = WxString.fromUTF8(label);
        dataViewListCtrlRef.ptr.appendBitmapColumn(s, modelColumn);
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
                case TFloat:
                    var f:Float = v;
                    data.pushBack(Variant.create(f));
                case TClass(String):
                    var s:String = Std.string(v);
                    data.pushBack(Variant.create(WxString.fromUTF8(s)));
                case TClass(Bitmap): // TODO: ugly! wrong!
                    var b:Bitmap = cast(v, Bitmap);
                    untyped __cpp__("{0}.push_back(wxVariant(*{1}))", data, b.bitmapRef.get_raw());
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