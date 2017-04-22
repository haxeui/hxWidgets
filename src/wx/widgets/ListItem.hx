package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/listctrl.h")
@:unreflective
@:native("wxListItem")
@:structAccess
extern class ListItem extends Object {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxListItem")          private static function _new():RawPointer<ListItem>;
                                        public static inline function createInstance():Pointer<ListItem> {
                                            return Pointer.fromRaw(_new());
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetId")                   public function setId(id:Int):Void;
    @:native("GetId")                   public function getId():Int;
    @:native("SetText")                 public function setText(text:WxString):Void;
    @:native("GetText")                 public function getText():WxString;
    @:native("SetImage")                public function setImage(image:Int):Void;
    @:native("GetImage")                public function getImage():Int;
    @:native("SetColumn")               public function setColumn(column:Int):Void;
    @:native("GetColumn")               public function getColumn():Int;
}