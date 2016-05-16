package hx.widgets;

import wx.widgets.SystemOptions in WxSystemOptions;
import wx.widgets.WxString;

class SystemOptions extends Object {

    public static function getOption(name:String):Int {
        var str = WxString.createInstance(name);
        var result:Int = WxSystemOptions.getOptionInt(str.ref);
        str.destroy();
        return result;
    }

    public static function setOption(name:String, value:Int) {
        var str = WxString.createInstance(name);
        WxSystemOptions.setOption(str.ref, value);
        str.destroy();
    }

}
