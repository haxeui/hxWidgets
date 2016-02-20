package wx.widgets;

@:include("wx/panel.h")
@:unreflective
@:native("cpp::Reference<wxPanel>")
extern class Panel extends PanelImpl {
    @:native("new wxPanel")     public static function createInstance():Panel;
}

@:include("wx/panel.h")
@:unreflective
@:native("wxPanel")
extern class PanelImpl extends Window {
}
