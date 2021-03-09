package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import hx.widgets.Bitmap;
import wx.widgets.DataViewListCtrl in WxDataViewListCtrl;
import wx.widgets.Bitmap in WxBitmap;
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
    
    public function deleteAllItems() {
        dataViewListCtrlRef.ptr.deleteAllItems();
    }
    
    public var itemCount(get, null):Int;
    private function get_itemCount():Int {
        return dataViewListCtrlRef.ptr.getItemCount();
    }
    
    public function getValue(row:Int, col:Int):Any {
        var v:Pointer<Variant> = Variant.empty();
        dataViewListCtrlRef.ptr.getValue(v.ref, row, col);
        var type = new String(v.ptr.getType().toUTF8().data());
        var r:Any = null;
        switch (type) {
            case "string":
                r = new String(v.ptr.getString().toUTF8().data());
            case "bool":
                r = v.ptr.getBool();
            case "long":
                var temp:Int = v.ptr.getLong();
                r = temp; // work around for: https://github.com/haxeui/hxWidgets/issues/73
            case "wxBitmap": // very ugly!
                var raw = v.get_raw();
                untyped __cpp__("wxBitmap temp");
                untyped __cpp__("temp << *{0}", raw);
                var bitmapTemp:RawPointer<WxBitmap> = untyped __cpp__("&temp");
                var bitmapPointer:Pointer<WxBitmap> = Pointer.fromRaw(bitmapTemp);
                if (bitmapPointer.ptr.getWidth() > 0 && bitmapPointer.ptr.getHeight() > 0 && bitmapPointer.ptr.isOk()) {
                    var bitmap = new Bitmap(bitmapPointer);
                    r = bitmap;
                }
            case _:
                r = new String(v.ptr.getString().toUTF8().data());
        }
        v.destroy();
        
        return r;
    }
    
    public function setValue(row:Int, col:Int, value:Any) {
        switch (Type.typeof(value)) { // some hxcpp weirdness going on here with Any
            case TInt:
                var i:Int = value;
                dataViewListCtrlRef.ptr.setValue(Variant.create(i), row, col);
            case TBool:
                var b:Bool = value;
                dataViewListCtrlRef.ptr.setValue(Variant.create(b), row, col);
            case TFloat:
                var f:Float = value;
                dataViewListCtrlRef.ptr.setValue(Variant.create(f), row, col);
            case TClass(String):
                var s:String = Std.string(value);
                dataViewListCtrlRef.ptr.setValue(Variant.create(WxString.fromUTF8(s)), row, col);
            case TClass(Bitmap): // TODO: ugly! wrong!
                var b:Bitmap = cast(value, Bitmap);
                untyped __cpp__("{0}->SetValue(wxVariant(*{1}), {2}, {3})", dataViewListCtrlRef.get_raw(), b.bitmapRef.get_raw(), row, col);
            case _:    
        }
    }
    
    public function getTextValue(row:Int, col:Int):String {
        var s:WxString = dataViewListCtrlRef.ptr.getTextValue(row, col);
        return new String(s.toUTF8().data());
    }
    
    public  function setTextValue(value:String, row:Int, col:Int) {
        var s = WxString.fromUTF8(value);
        dataViewListCtrlRef.ptr.setTextValue(s, row, col);
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