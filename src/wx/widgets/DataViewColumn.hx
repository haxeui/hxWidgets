package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dataview.h")
@:unreflective
@:native("wxDataViewColumn")
@:structAccess
extern class DataViewColumn extends SettableHeaderColumn {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxDataViewColumn")    private static function _new(title:WxString, renderer:RawPointer<DataViewRenderer>, modelColumn:Int):RawPointer<DataViewColumn>;
                                        public static inline function createInstance(title:WxString, renderer:RawPointer<DataViewRenderer>, modelColumn:Int):Pointer<DataViewColumn> {
                                            return Pointer.fromRaw(_new(title, renderer, modelColumn));
                                        }
}