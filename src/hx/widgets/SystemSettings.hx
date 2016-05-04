package hx.widgets;

import wx.widgets.SystemSettings in WxSystemSettings;

@:unreflective
class SystemSettings {
    @:access(hx.widgets.Window)
    public static function getMetric(metric:SystemMetric, window:Window = null):Int {
        return WxSystemSettings.getMetric(#if (haxe_ver >= 3.3) metric #else untyped __cpp__("((wxSystemMetric)metric)")#end, Window.toRaw(window));
    }
}
