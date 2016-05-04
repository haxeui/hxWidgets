package wx.widgets;
import cpp.RawPointer;

@:include("wx/settings.h")
@:unreflective
@:native("wxSystemSettings")
extern class SystemSettings {
    @:native("wxSystemSettings::GetMetric")               public static function getMetric(metric:SystemMetric, window:RawPointer<Window>):Int;
}
