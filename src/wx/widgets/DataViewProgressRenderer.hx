package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dataview.h")
@:unreflective
@:native("wxDataViewProgressRenderer")
@:structAccess
extern class DataViewProgressRenderer extends DataViewRenderer {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxDataViewProgressRenderer")  private static function _new(label:WxString, variantType:WxString, mode:DataViewCellMode, align:Int):RawPointer<DataViewProgressRenderer>;
                                                public static inline function createInstance(label:WxString, variantType:WxString, mode:DataViewCellMode, align:Int):Pointer<DataViewProgressRenderer> {
                                                    return Pointer.fromRaw(_new(label, variantType, mode, align));
                                                }
}