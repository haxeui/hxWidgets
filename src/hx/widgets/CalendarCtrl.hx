package hx.widgets;

import cpp.Pointer;
import wx.widgets.CalendarCtrl in WxCalendarCtrl;
import wx.widgets.WxString;
import wx.widgets.WxDateTime;

class CalendarCtrl extends Control {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxCalendarCtrl.createInstance().reinterpret();
            var dt = WxDateTime.now();
            calendarCtrlRef.ptr.create(Window.toRaw(parent), id, dt, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Properties
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var date(get, set):Date;
    private function get_date():Date {
        var dt = calendarCtrlRef.ptr.getDate();
        var v = dt.getValue();
        var r = Date.fromTime(v.toDouble());
        return r;
    }
    private function set_date(value:Date):Date {
        var dt = WxDateTime.now();
        untyped __cpp__("{0}.Set((time_t) {1})", dt, value.getTime() / 1000); // TODO: better way to handle date
        calendarCtrlRef.ptr.setDate(dt);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var calendarCtrlRef(get, null):Pointer<WxCalendarCtrl>;
    private function get_calendarCtrlRef():Pointer<WxCalendarCtrl> {
        return _ref.reinterpret();
    }
}