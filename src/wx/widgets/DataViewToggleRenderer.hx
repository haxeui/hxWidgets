package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dataview.h")
@:unreflective
@:native("wxDataViewToggleRenderer")
@:structAccess
extern class DataViewToggleRenderer extends DataViewRenderer {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxDataViewToggleRenderer")    private static function _new(variantType:WxString, mode:DataViewCellMode, align:Int):RawPointer<DataViewToggleRenderer>;
                                                public static inline function createInstance(variantType:WxString, mode:DataViewCellMode, align:Int):Pointer<DataViewToggleRenderer> {
                                                    return Pointer.fromRaw(_new(variantType, mode, align));
                                                }
}