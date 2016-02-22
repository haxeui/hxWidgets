package hx.widgets;

import wx.widgets.SystemOptions in WxSystemOptions;

class SystemOptions {
    public static function getOption(name:String):Int {
        return WxSystemOptions.getOptionInt(name);
    }
    
    public static function setOption(name:String, value:Int) {
        return WxSystemOptions.setOption(name, value);
    }
}