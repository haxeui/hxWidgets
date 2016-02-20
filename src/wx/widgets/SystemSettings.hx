package wx.widgets;

@:include("wx/settings.h")
@:unreflective
@:native("cpp::Reference<wxSystemSettings>")
extern class SystemSettings extends SystemSettingsImpl {
    @:native("new wxSystemSettings")    public static function createInstance():SystemSettings;
}

@:include("wx/settings.h")
@:unreflective
@:native("wxSystemSettings")
extern class SystemSettingsImpl {
    @:native("GetMetric")               public function getMetric(metric:SystemMetric, window:Window):Int;
    @:native("GetMetric")               public function getMetric2(metric:Dynamic, window:Window):Int;
}