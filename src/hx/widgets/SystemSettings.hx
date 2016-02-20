package hx.widgets;

import wx.widgets.SystemSettings in WxSystemSettings;

class SystemSettings {
    private var _ref:WxSystemSettings;

    public function new() {
        _ref = WxSystemSettings.createInstance();
    }
    
    @:access(hx.widgets.Window)
    public function getMetric(metric:SystemMetric, window:Window = null):Int {
        return _ref.getMetric(metric, window != null ? window._ref : Window.nullWindowRef);
    }
}