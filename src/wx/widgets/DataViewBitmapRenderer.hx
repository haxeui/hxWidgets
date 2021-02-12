package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dataview.h")
@:unreflective
@:native("wxDataViewBitmapRenderer")
@:structAccess
extern class DataViewBitmapRenderer extends DataViewRenderer {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxDataViewBitmapRenderer")    private static function _new(variantType:WxString, mode:DataViewCellMode, align:Int):RawPointer<DataViewBitmapRenderer>;
                                                public static inline function createInstance(variantType:WxString, mode:DataViewCellMode, align:Int):Pointer<DataViewBitmapRenderer> {
                                                    return Pointer.fromRaw(_new(variantType, mode, align));
                                                }
}