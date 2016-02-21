package hx.widgets;

import wx.widgets.SystemSettings in WxSystemSettings;

class SystemSettings {
    @:access(hx.widgets.Window)
    public static function getMetric(metric:SystemMetric, window:Window = null):Int {
        return WxSystemSettings.getMetric(untyped __cpp__("((wxSystemMetric)metric)"), window != null ? window._ref : Window.nullWindowRef);
    }
}