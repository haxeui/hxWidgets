package wx.widgets;

@:include("wx/settings.h")
@:unreflective
@:native("wxSystemSettings")
extern class SystemSettings {
    @:native("wxSystemSettings::GetMetric")               public static function getMetric(metric:SystemMetric, window:Window):Int;
}
