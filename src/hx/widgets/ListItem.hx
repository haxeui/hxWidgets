package hx.widgets;

import cpp.Pointer;
import wx.widgets.ListItem in WxListItem;
import wx.widgets.WxString;

class ListItem extends Object {
    public function new(text:String = null, image:Int = -1, column:Int = -1, id:Int = -1) {
        if (_ref == null) {
            _ref = WxListItem.createInstance().reinterpret();
        }

        if (text != null) {
            this.text = text;
        }
        if (image > -1) {
            this.image = image;
        }
        if (column > -1) {
            this.column = column;
        }
        if (id > -1) {
            this.id = id;
        }
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var id(get, set):Int;
    private function get_id():Int {
        return listItemRef.ptr.getId();
    }
    private function set_id(value:Int):Int {
        listItemRef.ptr.setId(value);
        return value;
    }

    public var text(get, set):String;
    private function get_text():String {
        var r:WxString = listItemRef.ptr.getText();
        return new String(r.c_str().asChar());
    }
    private function set_text(value:String):String {
        var s = WxString.fromUTF8(value);
        listItemRef.ptr.setText(s);
        return value;
    }

    public var image(get, set):Int;
    private function get_image():Int {
        return listItemRef.ptr.getImage();
    }
    private function set_image(value:Int):Int {
        listItemRef.ptr.setImage(value);
        return value;
    }

    public var column(get, set):Int;
    private function get_column():Int {
        return listItemRef.ptr.getColumn();
    }
    private function set_column(value:Int):Int {
        listItemRef.ptr.setColumn(value);
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var listItemRef(get, null):Pointer<WxListItem>;
    private function get_listItemRef():Pointer<WxListItem> {
       return _ref.reinterpret();
    }
}
