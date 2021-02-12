package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dataview.h")
@:unreflective
@:native("wxDataViewTextRenderer")
@:structAccess
extern class DataViewTextRenderer extends DataViewRenderer {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxDataViewTextRenderer")  private static function _new(variantType:WxString, mode:DataViewCellMode, align:Int):RawPointer<DataViewTextRenderer>;
                                            public static inline function createInstance(variantType:WxString, mode:DataViewCellMode, align:Int):Pointer<DataViewTextRenderer> {
                                                return Pointer.fromRaw(_new(variantType, mode, align));
                                            }
}