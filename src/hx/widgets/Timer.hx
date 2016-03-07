package hx.widgets;

import wx.widgets.Timer in WxTimer;

class Timer {
    private var _ref:WxTimer;
    
    @:access(hx.widgets.Window)
    public function new(window:Window, milliseconds:Int = -1, oneShot:Bool = false, id:Int = -1) {
        _ref = WxTimer.createInstance(window._ref, id);
        if (milliseconds > 0) {
            start(milliseconds, oneShot);
        }
    }
    
    public function start(milliseconds:Int, oneShot:Bool = false) {
        return _ref.start(milliseconds, oneShot);
    }
    
    public function stop() {
        _ref.stop();
    }
}
