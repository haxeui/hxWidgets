package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dataview.h")
@:unreflective
@:native("wxDataViewSpinRenderer")
@:structAccess
extern class DataViewSpinRenderer extends DataViewCustomRenderer {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxDataViewSpinRenderer")      private static function _new(min:Int, max:Int, mode:DataViewCellMode, align:Int):RawPointer<DataViewSpinRenderer>;
                                                public static inline function createInstance(min:Int, max:Int, mode:DataViewCellMode, align:Int):Pointer<DataViewSpinRenderer> {
                                                    return Pointer.fromRaw(_new(min, max, mode, align));
                                                }
}