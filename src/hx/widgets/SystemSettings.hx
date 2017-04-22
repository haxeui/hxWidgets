package hx.widgets;

import wx.widgets.SystemSettings in WxSystemSettings;

class SystemSettings extends Object {

    @:access(hx.widgets.Window)
    public static function getMetric(metric:SystemMetric, window:Window = null):Int {
        return WxSystemSettings.getMetric(metric, Window.toRaw(window));
    }

}
