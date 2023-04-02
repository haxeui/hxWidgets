package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dataobj.h")
@:unreflective
@:native("wxTextDataObject")
@:structAccess
extern class TextDataObject extends DataObjectSimple {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxTextDataObject")            private static function _new(text:WxString):RawPointer<TextDataObject>;
                                                public static inline function createInstance(text:WxString):Pointer<TextDataObject> {
                                                    return Pointer.fromRaw(_new(text));
                                                }
    @:native("new wxTextDataObject")            private static function _newEmpty():RawPointer<TextDataObject>;
                                                public static inline function createEmptyInstance():Pointer<TextDataObject> {
                                                    return Pointer.fromRaw(_newEmpty());
                                                }
    @:native("GetText")                         public function getText():WxString;
    @:native("SetText")                         public function setText(text:WxString):Void;
}